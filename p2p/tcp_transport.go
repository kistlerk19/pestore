package p2p

import (
	"net"
	"sync"
)

type TCPTransport struct {
	listernAddress string
	listener       net.Listener

	mu    sync.RWMutex // guards
	peers map[net.Addr]Peer
}

func NewTCPTransport(listernAddr string) Transport {
	return &TCPTransport{
		listernAddress: listernAddr,
	}
}
