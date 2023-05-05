## Day 19

---

### Task - 1 \[Docker Compose\]

*   Create a multi-container docker-compose file which will bring _UP_ and bring _DOWN_ containers in a single shot ( Example - Create application and database container )

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/44a080ab20acc311df87066d7cff1254579a58118e0cef89.png)

*   Compose up and down:

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/ff1f88e63d42829dda521374c81be15046b15bad63e394f0.png)

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/021a5a55b5737d0a9b4c678a9da6a4067d0c6e878c09e89a.png)

*   Creating replicas

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/5a008e05cea5cb0b11fc2a0ab2f27a92591b665968b9307c.png)

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/8394e1fbafe84c63e6b79f9c74f2d5cf06addbfd68926cc2.png)

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/98dbe4799ab99efd4f98a2dead01a7c25f581efc6e8970a5.png)

*   Replicas as command

Overriding replicas with --scale argument

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/d836a2d948ae075c22a59f6bbf726c23a69de5096be84a97.png)

*   Container status

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/7d9864f513e98bf78206822b0913f742bb45ca7050ec0ff8.png)

*   Compose container logs of my\_web\_app service

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/580fe62be179d7e8bea5759c7838ddf23c0c0e075cb42948.png)

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/95e199c302de8ab2ed1025bf27b2e4e1359f0537b7751d58.png)

*   docker-compose down

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/64fb96f4f8d4b1ffdcafa37dcea93ab62d7a9b1ff00407ba.png)

---

### Task - 2 \[Docker Volume\]

*   Create a docker volume

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/44416e513c4a7e11dc8d2680be6146c44b2a4931311a6a90.png)

*   Create a docker image

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/37bf45cf8f3d7b037b7d50dd0e4f9b8d43a06db8df7b0308.png)

*   Running two containers with the same volume

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/2b69028ff4b8705da1e98fe06897039623a6ecbbf6947960.png)

*   Verify that the data is the same in all containers

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/6e15188cc14cb571a4f1e7bc2f1f1adf86e36c8a6d23a2af.png)

*   Connect volume through docker compose file

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/879075ecb2ff2d6597c4c6a00f502cd64f1682db6fe08784.png)
