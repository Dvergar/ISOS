import osis.EntityManager;


class DummySystem extends System
{
    public function new()
    {
        need([CPosition]);
    }

    public override function onEntityChange(entity:Entity)
    {
        // trace("dummy change");
    }
}


class MovementSystem extends System
{
    public function new()
    {
        need([CPosition]);
    }

    public override function processEntity(entity:Entity)
    {
        entity.get(CPosition).x += 0.1;
        em.net.markChanged(entity, entity.get(CPosition));
    }
}

