import express from "express";

import {
    getPersons,
    getPersonById,
    createPerson,
    updatePerson,
    deletePerson
} from "../controllers/PersonController.js";


const router = express.Router()

router.get('/persons',getPersons);
router.get('/persons/:id',getPersonById);
router.post('/persons',createPerson);
router.patch('/persons/:id',updatePerson);
router.delete('/persons/:id',deletePerson);

export default router
