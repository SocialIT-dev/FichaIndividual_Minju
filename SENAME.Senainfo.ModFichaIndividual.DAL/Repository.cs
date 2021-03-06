﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;


namespace SENAME.Senainfo.ModFichaIndividual.DAL
{
    public class Repository
    {
        private readonly string _connectionString;
        protected int FilasAfectadas;
        protected string Mensaje;

        public Repository()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["Conexiones"].ConnectionString;
        }

        protected SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
    }

    public class RepositoryP
    {
        private readonly string _connectionString;
        protected int FilasAfectadas;
        protected string Mensaje;

        public RepositoryP()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["ConexionP"].ConnectionString;
        }

        protected SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
    }
}
