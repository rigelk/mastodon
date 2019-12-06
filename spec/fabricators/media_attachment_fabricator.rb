Fabricator(:media_attachment) do
  account

  file do |attrs|
    case attrs[:type]
    when :gifv
      attachment_fixture('attachment.webm')
    when :video
      attachment_fixture('attachment.mp4')
    else
      attachment_fixture('attachment.jpg')
    end
  end
end
