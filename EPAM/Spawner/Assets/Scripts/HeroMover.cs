using UnityEngine;
using System.Collections;

public class HeroMover : MonoBehaviour {

	private float moveSpeed = 10f;
	private float rotateSpeed = 100f;

	private float bulletSpeed = 500f;

	[SerializeField]
	private GameObject bulletPrefab;

	[SerializeField]
	private Transform bulletSpawnPoint;

	// Use this for initialization
	void Start () {
	}

	private void Fire() {
		GameObject bulletClone = Instantiate(bulletPrefab) as GameObject;
		bulletClone.transform.parent = gameObject.transform;
		bulletClone.transform.localPosition = new Vector3 (0.5f, 0.5f, 1);
		Rigidbody bulletBody = bulletClone.GetComponent<Rigidbody> (); 
		bulletBody.velocity = gameObject.transform.forward * bulletSpeed;
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKey (KeyCode.W)) {
			transform.position += transform.forward * Time.deltaTime * moveSpeed;
		}

		if (Input.GetKey (KeyCode.S)) {
			transform.position -= transform.forward * Time.deltaTime * moveSpeed;
		}

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
	}
}
