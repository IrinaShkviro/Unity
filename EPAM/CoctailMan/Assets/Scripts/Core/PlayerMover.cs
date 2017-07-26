using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMover : MonoBehaviour {

	private GameObject player;
	private Rigidbody playerBody;

	[SerializeField]
	private int speed = 6; 
	[SerializeField]
	private int rotationSpeed = 250;
	[SerializeField]
	private int jumpHigh = 3; 

	void Start () {
		player = (GameObject)this.gameObject; 
		playerBody = player.GetComponent<Rigidbody> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.W)) {
			playerBody.AddForce (transform.forward * speed);
		}

		if (Input.GetKey (KeyCode.S)) {
			playerBody.AddForce (-transform.forward * speed);
		}
		/*
		if (Input.GetKey (KeyCode.A)) {
			transform.Rotate(Vector3.up, -Time.deltaTime * rotateSpeed);
		}

		if (Input.GetKey (KeyCode.D)) {
			transform.Rotate(Vector3.up, Time.deltaTime * rotateSpeed);
		}

		// Calls the fire method when holding down ctrl or mouse
		if (Input.GetButtonDown("Fire1")) {
			Fire();
		}
		*/

	}
}
