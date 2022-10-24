# README
Marvel Mayhem is single-page-applcation to create your own Avengers by adding a list of characters to your team.

### Models
- Characters
    - name
    - description
    - thumbnail
    - team_id
- Destination
    - name

### Associations

```ruby
Characters

belongs_to :team

Team

has_many :characters

```
For frontend visit: 

https://github.com/dayshajones/marvel_mayhem_project

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
