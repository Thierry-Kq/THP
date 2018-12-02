require 'google_drive'


session = GoogleDrive::Session.from_config("./config.json")

# # Gets list of remote files.
# session.files.each do |file|
#   p file.title
# end

# # Uploads a local file.
# session.upload_from_file("./path/to/hello.txt", "hello.txt", convert: false)

# # Downloads to a local file.
# file = session.file_by_title("hello.txt")
# file.download_to_file("./path/to/hello.txt")

# # Updates content of the remote file.
# file.update_from_file("./path/to/hello.txt")



# First worksheet of
# https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
# Or https://docs.google.com/a/someone.com/spreadsheets/d/pz7XtlQC-PYx-jrVMJErTcg/edit?usp=drive_web
ws = session.spreadsheet_by_key("1gpKzo_6gH78KdlhfEqrxS6xpgKLbnoBqoEVeV0W4tZQ").worksheets[0]

# Gets content of A2 cell.
p ws[2, 1]  #==> "hoge"

# Changes content of cells.
# Changes are not sent to the server until you call ws.save().
ws[2, 1] = "salut"
ws[2, 2] = "david"
ws.save

# Dumps all cells.
(1..ws.num_rows).each do |row|
  (1..ws.num_cols).each do |col|
    p ws[row, col]
  end
end

# Yet another way to do so.
p ws.rows  #==> [["fuga", ""], ["foo", "bar]]

# Reloads the worksheet to get changes by other clients.
ws.reload