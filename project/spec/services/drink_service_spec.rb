require 'rails_helper'

context 'when the attributes are null and blank' do
  it 'sets null attributes return not null' do
    drink_service = DrinkService.new(nil, nil, nil, nil, nil, nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'sets bkank attributes return not null' do
    drink_service = DrinkService.new('', '', '', '', '', '', '').recommendation_drink
    expect(drink_service).not_to be_nil
  end
end

context 'when we are looking for drinks by alcohol level field' do
  it 'return valid for alcohol level low' do
    drink_service = DrinkService.new('Low', nil, nil, nil, nil, nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for alcohol level lower' do
    drink_service = DrinkService.new('Lower', nil, nil, nil, nil, nil, nil).recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

context 'when we are looking for drinks through the field bitterness' do
  it 'return valid for bitterness verry bitter' do
    drink_service = DrinkService.new(nil, 'Verry Bitter', nil, nil, nil, nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for bitterness lot of better' do
    drink_service = DrinkService.new(nil, 'Lot of Bitter', nil, nil, nil, nil, nil).recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

context 'when we are looking for drinks through the field temperature' do
  it 'return valid for temperature cold' do
    drink_service = DrinkService.new(nil, nil, 'Cold', nil, nil, nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for temperature lot of cold' do
    drink_service = DrinkService.new(nil, nil, 'Lot of Cold', nil, nil, nil, nil).recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

context 'when we are looking for drinks through the field drink origin' do
  it 'return valid for drink origin brazil' do
    drink_service = DrinkService.new(nil, nil, nil, 'Brazil', nil, nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for drink origin argentina' do
    drink_service = DrinkService.new(nil, nil, nil, 'Argentina', nil, nil, nil).recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

context 'when we are looking for drinks through the field drinkware' do
  it 'return valid for drinkware shot glass' do
    drink_service = DrinkService.new(nil, nil, nil, nil, 'Shot Glass', nil, nil).recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for drinkware beer glass' do
    drink_service = DrinkService.new(nil, nil, nil, nil, 'Beer Glass', nil, nil).recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

context 'when we are looking for drinks with the word caipirinha in the description field' do
  it 'return valid for word cachaça' do
    drink_service = DrinkService.new(nil, nil, nil, nil, nil, nil, 'cachaça').recommendation_drink
    expect(drink_service).not_to be_nil
  end

  it 'return invalid for word agua ardente' do
    drink_service = DrinkService.new(nil, nil, nil, nil, nil, nil, 'agua ardente').recommendation_drink
    expect(drink_service.empty?).to be_truthy
  end
end

