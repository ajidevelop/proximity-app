from app_config import db
import sqlalchemy as sa


class Business(db.Model):
    __tablename__ = 'business'
    business_id = sa.Column(sa.Uuid, primary_key=True)
    address = sa.Column(sa.String)
    city = sa.Column(sa.String)
    state = sa.Column(sa.String)
    country = sa.Column(sa.String)
    latitude = sa.Column(sa.Float)
    longitude = sa.Column(sa.Float)
