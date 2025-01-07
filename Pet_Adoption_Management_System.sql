-- Step 1: Create Tables

-- Table: Pets

CREATE TABLE Pets (
    PetID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Species VARCHAR(30),
    Breed VARCHAR(50),
    Age INT,
    Status VARCHAR(20) DEFAULT 'Available'
);

-- Table: Adopters
CREATE TABLE Adopters (
    AdopterID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(100),
    Address VARCHAR(255)
);

-- Table: Adoptions
CREATE TABLE Adoptions (
    AdoptionID INT PRIMARY KEY,
    PetID INT,
    AdopterID INT,
    AdoptionDate DATE,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (AdopterID) REFERENCES Adopters(AdopterID)
);


-- Step 2: Insert Sample Data

-- Insert Sample Pets
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (1, 'Bella', 'Dog', 'Labrador', 3, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (2, 'Max', 'Cat', 'Siamese', 2, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (3, 'Charlie', 'Dog', 'Beagle', 4, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (4, 'Luna', 'Cat', 'Persian', 1, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (5, 'Rocky', 'Dog', 'Bulldog', 5, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (5, 'Rocky', 'Dog', 'Bulldog', 5, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (6, 'Daisy', 'Dog', 'Poodle', 2, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (7, 'Simba', 'Cat', 'Maine Coon', 3, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (8, 'Buddy', 'Dog', 'Golden Retriever', 4, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (9, 'Nala', 'Cat', 'Bengal', 2, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (10, 'Oscar', 'Dog', 'German Shepherd', 5, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (11, 'Milo', 'Cat', 'Ragdoll', 1, 'Available');
INSERT INTO Pets (PetID, Name, Species, Breed, Age, Status) VALUES (12, 'Zoe', 'Dog', 'Husky', 3, 'Available');

-- Insert Sample Adopters
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (1, 'John Doe', 'john@example.com', '123 Main St');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (2, 'Jane Smith', 'jane@example.com', '456 Oak Ave');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (3, 'Emily Clark', 'emily@example.com', '789 Pine Rd');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (4, 'Michael Brown', 'michael@example.com', '321 Birch Blvd');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (5, 'Sarah Davis', 'sarah@example.com', '654 Maple Ln');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (5, 'Sarah Davis', 'sarah@example.com', '654 Maple Ln');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (6, 'Chris Johnson', 'chris@example.com', '321 Elm St');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (7, 'Laura White', 'laura@example.com', '741 Cedar St');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (8, 'Robert Green', 'robert@example.com', '852 Birch Rd');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (9, 'Linda Black', 'linda@example.com', '963 Maple Ave');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (10, 'Kevin Gray', 'kevin@example.com', '147 Pine St');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (11, 'Anna Blue', 'anna@example.com', '258 Oak Rd');
INSERT INTO Adopters (AdopterID, FullName, ContactInfo, Address) VALUES (12, 'Sophia Gold', 'sophia@example.com', '369 Willow Ln');

-- Insert Sample Adoptions
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (1, 1, 1, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (2, 2, 2, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (3, 3, 3, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (4, 4, 4, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (5, 5, 5, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (5, 5, 5, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (6, 6, 6, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (7, 7, 7, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (8, 8, 8, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (9, 9, 9, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (10, 10, 10, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (11, 11, 11, SYSDATE, 'Pending');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate, Status) VALUES (12, 12, 12, SYSDATE, 'Pending');

COMMIT;


-- Step 3: PL/SQL Function for Updating Adoption Status
CREATE OR REPLACE FUNCTION Update_Adoption_Status(
    p_AdoptionID IN INT,
    p_Status IN VARCHAR
) RETURN VARCHAR IS
    v_PetID INT;
BEGIN
    SELECT PetID INTO v_PetID FROM Adoptions WHERE AdoptionID = p_AdoptionID;
    
    UPDATE Adoptions
    SET Status = p_Status
    WHERE AdoptionID = p_AdoptionID;
    
    IF p_Status = 'Completed' THEN
        UPDATE Pets
        SET Status = 'Adopted'
        WHERE PetID = v_PetID;
    END IF;
    
    RETURN 'Adoption Status Updated Successfully';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Invalid Adoption ID';
    WHEN OTHERS THEN
        RETURN 'An error occurred';
END;
/


-- Step 4: Trigger for Status Change Notifications
CREATE OR REPLACE TRIGGER Adoption_Status_Trigger
AFTER UPDATE ON Adoptions
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.Status != :OLD.Status THEN
        DBMS_OUTPUT.PUT_LINE('Adoption status changed for Adoption ID: ' || :NEW.AdoptionID || ' to ' || :NEW.Status);
    END IF;
END;
/




-- Report: List of all Available Pets
SELECT * FROM Pets WHERE Status = 'Available';

-- Report: Adoption Records with Pet and Adopter Details
SELECT A.AdoptionID, P.Name AS PetName, AD.FullName AS AdopterName, A.AdoptionDate, A.Status
FROM Adoptions A
JOIN Pets P ON A.PetID = P.PetID
JOIN Adopters AD ON A.AdopterID = AD.AdopterID;

-- Report: Number of Adoptions per Month
SELECT TO_CHAR(AdoptionDate, 'YYYY-MM') AS Month, COUNT(*) AS TotalAdoptions
FROM Adoptions
GROUP BY TO_CHAR(AdoptionDate, 'YYYY-MM')
ORDER BY Month;



-- Test the Update Function

BEGIN
    DBMS_OUTPUT.PUT_LINE(Update_Adoption_Status(1, 'Completed'));
END;

-- Verify Updates
SELECT * FROM Adoptions;
SELECT * FROM Pets;