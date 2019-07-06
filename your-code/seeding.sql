INSERT INTO customer (
						cus_ID,
                        name_cus,
                        phone,
                        email,
                        address,
                        city,
                        state_province,
                        country,
                        zip_postcode) VALUES (
												'0000000001',
                                                'John',
                                                '0034700692',
                                                'wwww',
                                                'Paseo_de_la_Chopera_14',
                                                'Madrid',
                                                'Madrid',
                                                'Spain',
                                                '28045');

INSERT INTO car ( vin,  manufacturer,  model,  year_car ,  colour ) VALUES ('3198ASD', 'TOYOTA', 'RAV4', '2010', 'Black'), ('2445QBD', 'FORD', 'K', '2015', 'White');
INSERT INTO salesperson (staff_ID,  staff_name ,  store) VALUES ('S001', 'Chao', 'Sabadell'), ( 'S002', 'Pau', 'Barcelona');
INSERT INTO invoice (invoice_number, date_invoice, car, customer, salestaff ) VALUES ('F0001', '2019-11-07', '3198ASD', '0000000001', 'S001'), ('F0002', '2019-06-10', '2445QBD', '0000000002', 'S002');
