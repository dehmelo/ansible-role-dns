$TTL 300 ; 5 minutes

@ IN SOA   ns1.duquepotato.ml. root.duquepotato.ml. (
			; O Padrão é ANO-MES-DIA-ID -  Ex: 2022123101
            2022090701 ; serial
            3600       ; refresh (1 hour)
            3600       ; retry (1 hour)
            604800     ; expire (1 week)
            3600       ; minimum (1 hour)
            )

                		IN      NS        ns1.duquepotato.ml.

ns1			       		IN	  	A         192.168.56.10		; DNS Master | ns1.duquepotato.ml
ns2			      		IN	  	A	  	  192.168.56.20		; DNS Slave  | ns2.duquepotato.ml
dns			       		IN	  	CNAME	  ns1			    ; DNS Master | dns.duquepotato.ml 
dns-replica		     	IN	  	CNAME	  ns2			    ; DNS Slave  | dns-replica.duquepotato.ml
mysql			        IN  	A	  	  192.168.56.30		; mysql
imap			        IN	  	CNAME	  webmail			; imap.duquepotato.ml
pop			            IN	  	CNAME	  webmail			; pop.duquepotato.ml
smtp			        IN	  	CNAME	  webmail			; smtp.duquepotato.ml 
webmail			        IN	  	A		  192.168.56.40	    ; webmail.duquepotato.ml
pfsense			        IN	  	A	      192.168.56.50		; pfSense
vpn			            IN	  	A	  	  192.168.56.51     ; vpn.duquepotato.ml
blog			        IN  	A	      192.168.56.60		; blog.duquepotato.ml
chat			        IN	  	A	      192.168.56.70		; chat.duquepotato.ml 
rundeck         	    IN    	A         172.27.11.10		; rundeck.duquepotato.ml
gitlab			        IN	  	A 	      192.168.56.80		; gitlab.duquepotato.ml
jenkins    		     	IN  	A  	      172.27.11.10		; jenkins.duquepotato.ml


