using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    private GameObject player;
    private Rigidbody playerBody;

    [SerializeField]
    private int speed = 6;
    [SerializeField]
    private int rotationSpeed = 250;
    [SerializeField]
    private int jumpHigh = 3;

    void Start()
    {
        player = (GameObject)this.gameObject;
        playerBody = player.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.W)) {
            playerBody.AddForce(transform.forward * speed);
        }

        if (Input.GetKey(KeyCode.S)) {
            playerBody.AddForce(-transform.forward * speed);
        }
        
		if (Input.GetKey (KeyCode.A)) {
            playerBody.AddTorque(-transform.up * rotationSpeed/10);
		}

		if (Input.GetKey (KeyCode.D)) {
			playerBody.AddTorque(transform.up * rotationSpeed/10);
		}

		// Calls the fire method when holding down ctrl or mouse
		if (Input.GetButtonDown("Fire1")) {
			//Fire();
		}
		

    }
}
