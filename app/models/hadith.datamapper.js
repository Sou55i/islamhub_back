import { client } from "../services/index.service.js";


const hadithDatamapper = {
    async findAll() {
        const query = 'SELECT * FROM hadiths';
        const result = await db.query(query);
        return result.rows;
    },

    async findById(id) {
        const query = 'SELECT * FROM hadiths WHERE id = $1';
        const result = await db.query(query, [id]);
        return result.rows[0];
    },

    async create(hadith) {
        const { text, author, source } = hadith;
        const query = `
      INSERT INTO hadiths (text, author, source)
      VALUES ($1, $2, $3)
      RETURNING *
    `;
        const result = await db.query(query, [text, author, source]);
        return result.rows[0];
    },

    async update(id, hadith) {
        const { text, author, source } = hadith;
        const query = `
      UPDATE hadiths
      SET text = $1, author = $2, source = $3
      WHERE id = $4
      RETURNING *
    `;
        const result = await db.query(query, [text, author, source, id]);
        return result.rows[0];
    },

    async delete(id) {
        const query = 'DELETE FROM hadiths WHERE id = $1 RETURNING *';
        const result = await db.query(query, [id]);
        return result.rows[0];
    },
};

module.exports = hadithDatamapper;