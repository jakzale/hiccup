# Entity class
# .
class Entity
    # Entity attributes
    attr_accessor :description
    def initialize(description)
        @description = description
        @links = {}
    end

    def [](id)
        @links[id]
    end

    def link(tag, entity)
        @links[tag] = entity
    end

    def links
        @links.keys
    end

    def unlink(key)
        @links.delete key
        return
    end
end