import 'package:app/features/activity_log/domain/pet_activity.dart';

class PetActivityCollection {
  PetActivityCollection(activities) : _activities = activities;

  final List<PetActivity> _activities;

  List<PetActivity> getActivitiesByPetId(String petId) {
    return _activities.where((activity) => activity.petId == petId).toList();
  }

  List<PetActivity> getAllActivities() {
    return _activities;
  }

  PetActivity getActivityById(String id) {
    return _activities.firstWhere((activity) => activity.id == id);
  }

  List<String> getActivityIDs() {
    return _activities.map((activity) => activity.id).toList();
  }

  PetActivity getActivityByDate(String date) {
    return _activities.firstWhere((element) => element.date == date);
  }

  List<String> getActivityDates() {
    return _activities.map((element) => element.date).toList();
  }
}
