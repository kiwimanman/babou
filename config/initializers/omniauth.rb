Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '242720749093443', 'da177e23ea741fb8812a211765122d7d'
end