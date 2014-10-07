from sqlalchemy import Table, Column
from sqlalchemy import ForeignKey, Integer, String, DateTime, Text
from sqlalchemy.orm import relationship, backref
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Clients(Base):
    __tablename__ = 'clients'
    id = Column(Integer, primary_key=True)
