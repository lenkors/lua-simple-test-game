
function ProfileScreen ()
    love.graphics.setColor(unpack(TextFieldsOptions.colors.background))
    love.graphics.rectangle('fill',
        TextFieldsOptions.x, TextFieldsOptions.y,
        TextFieldsOptions.width, TextFieldsOptions.height)

    love.graphics.setColor(unpack(TextFieldsOptions.colors.text))
    love.graphics.printf(TextFieldFirstName,
        TextFieldsOptions.x, TextFieldsOptions.y,
        TextFieldsOptions.width, 'left')
end