from app_config import db
import sqlalchemy as sa
from business import Business


class GeoIndex(db.Model):
    __tablename__ = 'geo_index'
    business_id = sa.Column(sa.ForeignKey(Business.business_id), primary_key=True)
    geohash_4 = sa.Column(sa.String)
    geohash_5 = sa.Column(sa.String)
    geohash_6 = sa.Column(sa.String)
