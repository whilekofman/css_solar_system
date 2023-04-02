json.star do
    json.extract! @star, :id, :name, :facts, :diameter, :temperature, :mass
end