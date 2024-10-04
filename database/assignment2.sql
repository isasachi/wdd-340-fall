--1 Insert quesry
INSERT INTO public.account	
	(
		account_firstname,
		account_lastname,
		account_email,
		account_password
	)
	VALUES
	(
		'Tony',
		'Stark',
		'tony@starkent.com',
		'Iam1ronM@n'
	);

--2 Update query
UPDATE public.account SET account_type = 'Admin' WHERE account_id = 1;

--3 Delete query
DELETE FROM public.account WHERE account_id = 1;

--4 Update GM Hummer description
UPDATE public.inventory SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') WHERE inv_model = 'Hummer';

--5 Select query join
SELECT 
	inventory.inv_make, 
	inventory.inv_model, 
	classification.classification_name
		FROM public.inventory
			JOIN public.classification
				ON inventory.classification_id = classification.classification_id
					WHERE classification.classification_name = 'Sport';

--6 Update query add /vehicles to image and thumbnail strings
UPDATE public.inventory SET 
	inv_image = REPLACE(inv_image, 'images', 'images/vehicles'), 
	inv_thumbnail = REPLACE(inv_thumbnail, 'images', 'images/vehicles');