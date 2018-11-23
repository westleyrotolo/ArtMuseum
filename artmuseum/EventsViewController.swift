//
//  EventsViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 19/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import UIKit
import CVCalendar
class EventsViewController: UIViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate, CVCalendarViewAppearanceDelegate,UITableViewDelegate, UITableViewDataSource {

    struct Color {
      static let selectedText = UIColor.white
        static let text = UIColor.black
        static let textDisabled = UIColor.gray
        static let selectionBackground = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        static let sundayText = UIColor(red: 1.0, green: 0.2, blue: 0.2, alpha: 1.0)
        static let sundayTextDisabled = UIColor(red: 1.0, green: 0.6, blue: 0.6, alpha: 1.0)
        static let sundaySelectionBackground = sundayText
    }
    var eventi : [Events] = [Events]()
    
    fileprivate var randomNumberOfDotMarkersForDay = [Int]()
    var shouldShowDaysOut = true
    var animationFinished = true
    var selectedDay:DayView!
    @IBOutlet weak var tableView: UITableView!
    var currentCalendar: Calendar?
    @IBAction func next_button(_ sender: Any) {
        calendarView.loadNextView()
        
    }
    @IBAction func previuous_button(_ sender: Any) {
        calendarView.loadPreviousView()
    
    }
    @IBAction func today_button(_ sender: Any) {
        calendarView.toggleCurrentDayView()
    }
     
    @IBOutlet weak var menuView: CVCalendarMenuView!
    @IBOutlet weak var calendarView: CVCalendarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Appearance delegate [Unnecessary]
       // self.calendarView.calendarAppearanceDelegate = self
        // Animator delegate [Unnecessary]
       // self.calendarView.animatorDelegate = self
        // Menu delegate [Required]
       self.menuView.menuViewDelegate = self
        // Calendar delegate [Required]
        self.calendarView.calendarDelegate = self
        // Do any additional setup after loading the view.
        self.calendarView.appearance.dayLabelWeekdaySelectedBackgroundColor = Color.selectionBackground
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    func dotMarker(sizeOnDayView dayView: DayView) -> CGFloat {
        return 5
    }
    func dotMarkerColor() -> UIColor {
        return UIColor.black
    }
    func dotMarker(moveOffsetOnDayView dayView: DayView) -> CGFloat {
        return 15
    }
    func dotMarker(shouldShowOnDayView dayView: DayView) -> Bool {
        print ("count events: \(AppDelegate.museum.events!.count)")
         for x in AppDelegate.museum.events!{
            let calendar = Calendar.current
            let year = calendar.component(.year, from: x.start_date)
            let month = calendar.component(.month, from: x.start_date)
            let day = calendar.component(.day, from: x.start_date)
            let year1 = calendar.component(.year, from: dayView.date.convertedDate()!)
            let month1 = calendar.component(.month, from: dayView.date.convertedDate()!)
            let day1 = calendar.component(.day, from: dayView.date.convertedDate()!)
            if day == day1{
                if month == month1{
                    if year == year1{
                        
                        return true
                    }
                }
            }
        }
        return false
    }
    func dotMarker(shouldMoveOnHighlightingOnDayView dayView: DayView) -> Bool {
        return false
    }
    func dotMarker(colorOnDayView dayView: DayView) -> [UIColor] {
        return [UIColor.black]
    }
    func preTapped(sender: UIBarButtonItem){
        self.calendarView.loadPreviousView()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    /// Required method to implement!
    func firstWeekday() -> Weekday {
        return .sunday
    }
    func calendar() -> Calendar? {
        return currentCalendar
    }
    
    func dayOfWeekTextColor(by weekday: Weekday) -> UIColor {
        return weekday == .sunday ? UIColor.white : UIColor.white
    }
    
    func dayLabelWeekdaySelectedBackgroundColor() -> UIColor {
        return Color.selectionBackground
    }
    func shouldShowWeekdaysOut() -> Bool {
        return shouldShowDaysOut
    }
    
    func shouldAnimateResizing() -> Bool {
        return true // Default value is true
    }
    
    private func shouldSelectDayView(dayView: DayView) -> Bool {
        return arc4random_uniform(3) == 0 ? true : false
    }
    
    func shouldAutoSelectDayOnMonthChange() -> Bool {
        return false
    }
    
    func didSelectDayView(_ dayVoiew: CVCalendarDayView, animationDidFinish: Bool) {
        let count : Int = eventi.count
        eventi.removeAll()
        tableView.beginUpdates()
        var indexPath : IndexPath
        for i in 0..<count{
            indexPath =  IndexPath(row: i, section: 0)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        tableView.endUpdates()
        print (AppDelegate.museum.events!.count)
        for x in AppDelegate.museum.events!{
            print ("evento: \(x.title)")
            let calendar = Calendar.current
            let year = calendar.component(.year, from: x.start_date)
            let month = calendar.component(.month, from: x.start_date)
            let day = calendar.component(.day, from: x.start_date)
            let year1 = calendar.component(.year, from: dayVoiew.date.convertedDate()!)
            let month1 = calendar.component(.month, from: dayVoiew.date.convertedDate()!)
            let day1 = calendar.component(.day, from: dayVoiew.date.convertedDate()!)
            if day == day1{
                if month == month1{
                    if year == year1{
                        let indexpath : IndexPath = IndexPath(row: eventi.count, section: 0)
                        eventi.append(x)
                        tableView.beginUpdates()
                        tableView.insertRows(at: [indexpath], with: .automatic)
                        tableView.endUpdates()
                    }
                }
            }
        }

        self.calendarView.contentController.refreshPresentedMonth()
    }
    func topMarker(shouldDisplayOnDayView dayView: CVCalendarDayView) -> Bool {
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showEvent"){
            let vc = segue.destination as! EventsDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            
            vc.e = eventi[row]
            self.tableView.deselectRow(at: myIndexPath, animated: true)
        }
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventi.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "EventCell")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = eventi[indexPath.row].title
      //  cell.imageView?.image = eventi[indexPath.row].img
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM, yyyy"
        let data : String = dateFormatter.string(from: eventi[indexPath.row].start_date)
        cell.detailTextLabel?.text = data
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showEvent", sender: tableView)
    }
   
}
