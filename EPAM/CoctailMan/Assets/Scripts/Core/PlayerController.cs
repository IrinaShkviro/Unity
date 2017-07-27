using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Project.Constants;

public class PlayerController : MonoBehaviour {

    private GameObject player;
    private Rigidbody playerBody;

    [SerializeField]
    private int speed = 6;
    [SerializeField]
    private int rotationSpeed = 250;
    [SerializeField]
    private int jumpSpeed = 3;

	private bool isJump = false;
	int fordableMask = 1 << 8;

    void Start()
    {
        player = (GameObject)this.gameObject;
        playerBody = player.GetComponent<Rigidbody>();
		isJump = false;
    }

	void OnCollisionEnter(Collision collis) 
	{ 
		if (collis.gameObject.layer == EnvironmentConstants.fordableLayer) 
		{ 
			isJump = false; 
		} 
	} 
		
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

		if (Input.GetKeyDown(KeyCode.Space)) 
		{ 
			if (isJump == false) 
			{ 
				isJump = true; 
				playerBody.AddForce(transform.up * jumpSpeed, ForceMode.Impulse); 
			} 
		} 

		// Calls the fire method when holding down ctrl or mouse
		if (Input.GetButtonDown("Fire1")) {
			//Fire();
		}
		

    }
}
