package com.springxflutter.springxflutter.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springxflutter.springxflutter.Exception.UserException;
import com.springxflutter.springxflutter.Model.Coordinates;
import com.springxflutter.springxflutter.Model.DOB;
import com.springxflutter.springxflutter.Model.Location;
import com.springxflutter.springxflutter.Model.Name;
import com.springxflutter.springxflutter.Model.Picture;
import com.springxflutter.springxflutter.Model.Street;
import com.springxflutter.springxflutter.Model.TimeZone;
import com.springxflutter.springxflutter.Model.User;
import com.springxflutter.springxflutter.Repository.CoordinatesRepository;
import com.springxflutter.springxflutter.Repository.DOBRespository;
import com.springxflutter.springxflutter.Repository.LocationRespository;
import com.springxflutter.springxflutter.Repository.NameRespository;
import com.springxflutter.springxflutter.Repository.PictureRepository;
import com.springxflutter.springxflutter.Repository.StreetRepository;
import com.springxflutter.springxflutter.Repository.TimeZoneRepository;
import com.springxflutter.springxflutter.Repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CoordinatesRepository coordinatesRepository;

    @Autowired
    private DOBRespository dobRespository;

    @Autowired
    private LocationRespository locationRespository;

    @Autowired
    private NameRespository nameRespository;

    @Autowired
    private PictureRepository pictureRepository;

    @Autowired
    private StreetRepository streetRepository;

    @Autowired
    private TimeZoneRepository timeZoneRepository;

    @Override
    public User findById(Long userId) {
        Optional<User>opt = userRepository.findById(userId);

        if(opt == null){
            throw new UserException("User not found with idL "+userId);
        }

        return opt.get();
    }

    @Override
    public List<User> findAllUsers() {
        List<User>users = userRepository.findAll();
        return users;
    }

    @Override
    public User addUser(User user) {
        
        User newUser = new User();

        newUser.setEmail(user.getEmail());
        newUser.setPhone(user.getPhone());

        DOB dob = new DOB();
        dob.setDate(user.getDob().getDate());
        dob.setAge(user.getDob().getAge());

        DOB savedDOB = dobRespository.save(dob);

        newUser.setDob(savedDOB);

        Location location = new Location();

        location.setCity(user.getLocation().getCity());
        location.setCountry(user.getLocation().getCountry());
        location.setPostCode(user.getLocation().getPostCode());
        
        Coordinates coordinates = new Coordinates();
        coordinates.setLatitude(user.getLocation().getCoordinates().getLatitude()); 
        coordinates.setLongitude(user.getLocation().getCoordinates().getLongitude());

        Coordinates saveCoordinates = coordinatesRepository.save(coordinates);
        
        location.setCoordinates(saveCoordinates);

        Street street = new Street();
        street.setName(user.getLocation().getStreet().getName());
        street.setNumber(user.getLocation().getStreet().getNumber());

        Street savedStreet = streetRepository.save(street);

        location.setStreet(savedStreet);

        TimeZone timeZone = new TimeZone();
        timeZone.setOffset(user.getLocation().getTimezone().getOffset());
        timeZone.setDescription(user.getLocation().getTimezone().getDescription());

        TimeZone savedTimeZone = timeZoneRepository.save(timeZone);

        location.setTimezone(savedTimeZone);

        Location savedLocation = locationRespository.save(location);

        newUser.setLocation(savedLocation);

        Name name = new Name();
        name.setTitle(user.getName().getTitle());
        name.setFirstName(user.getName().getFirstName());
        name.setLastName(user.getName().getLastName());

        Name savedName = nameRespository.save(name);

        newUser.setName(savedName);

        Picture picture =  new Picture();
        picture.setSmall(user.getPicture().getSmall());
        picture.setMedium(user.getPicture().getMedium());
        picture.setLarge(user.getPicture().getLarge());

        Picture savedPicture = pictureRepository.save(picture);

        newUser.setPicture(savedPicture);

        User savedUser = userRepository.save(newUser);

        return savedUser;
    }
    
}
