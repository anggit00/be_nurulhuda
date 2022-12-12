import {PrismaClient} from "@prisma/client";

const prisma = new PrismaClient();
export const getPersons = async (req, res) =>{
    try {
        const response = await prisma.persons.findMany();
        res.status(200).json(response)
    } catch (error){
        res.status(500).json({msq: error.message})
    }
}

export const getPersonById = async (req, res) =>{
    try {
        const response = await prisma.persons.findUnique({
            where: {
                id: Number(req.params.id)
            }
        });
        res.status(200).json(response)
    } catch (error){
        res.status(404).json({msq: error.message})
    }
}

export const createPerson = async (req, res) =>{
    const {identity_number, fullname, date_of_birth, place_of_birth, address, city, tax_number,
        acc_name, acc_number, acc_bank_name, acc_bank_code, created_by } = req.body;
    try {
        const person = await prisma.persons.create({
            data:{
                identity_number: identity_number,
                fullname: fullname,
                date_of_birth: date_of_birth,
                place_of_birth: place_of_birth,
                address: address,
                city: city,
                tax_number: tax_number,
                acc_name: acc_name,
                acc_number: acc_number,
                acc_bank_name: acc_bank_name,
                acc_bank_code: acc_bank_code,
                created_by: created_by
            }
        })
        res.status(201).json(person)
    }catch (error){
        res.status(400).json({msq: error.message})
    }
}

export const updatePerson = (req, res) =>{

}

export const deletePerson = (req, res) =>{

}