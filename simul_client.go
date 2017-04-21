package main

import (
	"fmt"
	"net"
	"sync"
	"time"
)

func main() {

	var wg1 sync.WaitGroup
	connCount := 0
	messages := make(chan int)
	var mutex = &sync.Mutex{}
	noOfConn := 10000
	wg1.Add(1)
	for i := 0; i < noOfConn; i++ {
		// fmt.Println("inside loop")
		go func() {
			wg1.Wait()
			clientConn, err := net.Dial("tcp", "10.201.23.1:80")
			if err != nil {
				fmt.Printf("dial(): ERR: could not connect to %v\n", err)
			}
			srcipport := fmt.Sprintf("%v", clientConn.LocalAddr())
			dstipport := fmt.Sprintf("%v", clientConn.RemoteAddr())
			mutex.Lock()
			connCount += 1
			mutex.Unlock()
			fmt.Println("connCount : ", connCount, srcipport, dstipport)

			messages <- 1
			time.Sleep(1 * time.Second)
			clientConn.Close()
		}()
	}
	wg1.Done()
	start := time.Now()
	for i := 0; i < noOfConn; i++ {
		<-messages
	}
	elapsed := time.Since(start).Seconds()
	fmt.Println("time for 1000 connection  : %d seconds", elapsed)
	fmt.Println("Final connCount : ", connCount)
}
