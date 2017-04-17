package main

import (
	"fmt"
	"net"
	"sync"
	"time"
)

func main() {

	var wg1 sync.WaitGroup
	wg1.Add(1)
	connCount := 0
	messages := make(chan int)
	var mutex = &sync.Mutex{}
	for i := 0; i < 1000; i++ {
		// fmt.Println("inside loop")
		go func() {
			fmt.Println("inside func")
			wg1.Wait()
			clientConn, err := net.Dial("tcp", "10.201.23.4:80")
			if err != nil {
				fmt.Printf("dial(): ERR: could not connect to %v\n", err)
			}
			srcipport := fmt.Sprintf("%v", clientConn.LocalAddr())
			dstipport := fmt.Sprintf("%v", clientConn.RemoteAddr())
			fmt.Println("connCount : ", connCount, srcipport, dstipport)
			mutex.Lock()
			connCount += 1
			mutex.Unlock()

			messages <- 1
		}()
	}
	wg1.Done()
	start := time.Now()
	for i := 0; i < 1000; i++ {
		<-messages
	}
	elapsed := time.Since(start).Seconds()
	fmt.Println("time for 1000 connection  : %d seconds", elapsed)
	fmt.Println("Final connCount : ", connCount)
}
