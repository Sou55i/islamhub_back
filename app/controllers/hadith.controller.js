import db from "../models/index.datamapper.js";

const hadithController = {
    async getAll(req, res) {
        try {
            const hadiths = await hadithsDatamapper.findAll();
            res.json(hadiths);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },

    async getOne(req, res) {
        try {
            const hadith = await hadithsDatamapper.findById(req.params.id);
            if (!hadith) {
                return res.status(404).json({ message: 'Hadith not found' });
            }
            res.json(hadith);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },

    async create(req, res) {
        try {
            const newHadith = await hadithsDatamapper.create(req.body);
            res.status(201).json(newHadith);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },

    async update(req, res) {
        try {
            const updatedHadith = await hadithsDatamapper.update(req.params.id, req.body);
            if (!updatedHadith) {
                return res.status(404).json({ message: 'Hadith not found' });
            }
            res.json(updatedHadith);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },

    async delete(req, res) {
        try {
            const deletedHadith = await hadithsDatamapper.delete(req.params.id);
            if (!deletedHadith) {
                return res.status(404).json({ message: 'Hadith not found' });
            }
            res.json(deletedHadith);
        } catch (error) {
            console.error(error);
            res.status(500).json({ message: 'Internal server error' });
        }
    },
};

module.exports = hadithController;