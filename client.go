package main

import (
	// "fmt"
	"net"
	"time"
)

func main() {

	// connect to this socket

	for {
		net.Dial("tcp", "127.0.0.1:3129")
		time.Sleep(1 * time.Millisecond)
	}
	// connCount := 0
	// for {

	// 	// var localAddr *net.TCPAddr
	// 	// localAddr = nil
	// 	// IPPort := "10.201.23.4:80"
	// 	// remoteAddrAndPort := &net.TCPAddr{IP: net.ParseIP(IPPort), Port: 80}
	// 	// clientConn, err := net.DialTCP("tcp", localAddr, remoteAddrAndPort)
	// 	clientConn, err := net.Dial("tcp", "10.201.23.4:80")
	// 	if err != nil {
	// 		fmt.Printf("dial(): ERR: could not connect to %v\n", err)
	// 	}
	// 	srcipport := fmt.Sprintf("%v", clientConn.LocalAddr())
	// 	dstipport := fmt.Sprintf("%v", clientConn.RemoteAddr())
	// 	fmt.Println("connCount : ", connCount, srcipport, dstipport)
	// 	connCount += 1
	// 	time.Sleep(1 * time.Microsecond)
	// }
}
