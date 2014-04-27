//
//  DeviceTableViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DeviceTableViewController.h"
#import "DeviceViewController.h"
#import "DevicesInfo.h"
#import "DeviceCustomCell.h"
#import "DeviceDetailViewController.h"

@interface DeviceTableViewController ()

@end

@implementation DeviceTableViewController
@synthesize deviceInt, rdArray, msArray, aiArray, piArray, eiArray, idArray, diArray, deviceTable, titleLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Ribbons/Medals Devices Array
    rdArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *rd01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d015.png"] dName:@"3/16in Star" dDetail:@"Service, campaign, and battle stars are bronze or silver in appearance, 3/16 inches in height, and worn by members of the seven uniformed services of the United States on medals and ribbons issued by the uniformed services to denote additional awards or periods of service. A silver service star is worn in lieu of five bronze stars."];
    DevicesInfo *rd02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d017.png"] dName:@"5/16in Star" dDetail:@"A 5⁄16 inch star is a miniature metal device worn by members of the seven uniformed services of the United States on medals and ribbons issued by the Department of the Navy, Coast Guard, Public Health Service, and National Oceanic and Atmospheric Administration to denote subsequent decorations and awards. It is gold or silver in appearance, 5⁄16 inches in height. A gold star represents one additional award, while a silver star is worn in lieu of five gold stars."];
    DevicesInfo *rd03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d029.png"] dName:@"'V' Device" dDetail:@"The ‘V’ device is 1⁄4 inch bronze letter ‘V’ which may be worn on certain medals and ribbons issued to members of the United States Armed Forces. The Army and Air Force refer to it as the ‘V’ Device, while the Navy, Marine Corps, and Coast Guard refer to it as the Combat Distinguishing Device or Combat ‘V’. Navy, Marine Corps, and Coast Guard – the device is worn to denote combat heroism or to recognize individuals who are ‘exposed to personal hazard during direct participation in combat operations’."];
    DevicesInfo *rd04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d027.png"] dName:@"'M' Device" dDetail:@"The Armed Forces Reserve Medal is a service medal of the. The medal recognizes service performed by members of the reserve components and is awarded to both officers and enlisted personnel. If the medal is awarded for periods of service, it is accompanied by an hourglass device. If the medal is awarded in connection with a mobilization, it is accompanied by an ‘M’ device. Subsequent mobilizations under an unrelated presidential call-up order result in a numeral device being worn to indicate the number of mobilizations."];
    DevicesInfo *rd05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d028.png"] dName:@"Hourglass Device" dDetail:@"The Armed Forces Reserve Medal is a service medal of the. The medal recognizes service performed by members of the reserve components and is awarded to both officers and enlisted personnel. If the medal is awarded for periods of service, it is accompanied by an hourglass device. Depending on the length of service, a bronze hourglass – 10 years, silver hourglass – 20 years, gold hourglass – 30 years, and bronze and gold hourglass – 40 years."];
    DevicesInfo *rd06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d031.png"] dName:@"Oak Leaf Cluster" dDetail:@"An oak leaf cluster is a miniature metal device worn by members of the seven uniformed services of the United States on medals and ribbons issued by the United States Army, Air Force, and Department of Defense to denote subsequent decorations and awards. It is bronze or silver in appearance, formed as a twig of four oak leaves with three acorns on the stem. The bronze oak leaf cluster represents one additional award, while the silver oak leaf cluster is worn in lieu of five bronze oak leaf clusters."];
    DevicesInfo *rd07 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d032.png"] dName:@"Numeral Device" dDetail:@"An Arabic Numeral device or Numeral device sometimes called an ‘Award numeral’, is a United States military service device that may be authorized for wear on specific service ribbons. Arabic numeral devices are bronze or gold in color and are 3/16 inch in height and are worn to denote award of a second or subsequent award for which a member has already received the initial decoration or award. The ribbon denotes the first award and numerals starting with the numeral 2 denote the number of additional awards."];

    [rdArray addObject:rd01];
    [rdArray addObject:rd02];
    [rdArray addObject:rd03];
    [rdArray addObject:rd04];
    [rdArray addObject:rd05];
    [rdArray addObject:rd06];
    [rdArray addObject:rd07];
    
    //Marksmanship Badges Array
    msArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ms01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d021.png"] dName:@"Rifle Marksman" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    DevicesInfo *ms02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d022.png"] dName:@"Rifle Sharpshooter" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    DevicesInfo *ms03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d023.png"] dName:@"Rifle Expert" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    DevicesInfo *ms04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d024.png"] dName:@"Pistol Marksman" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    DevicesInfo *ms05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d025.png"] dName:@"Pistol Sharpshooter" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    DevicesInfo *ms06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d026.png"] dName:@"Pistol Expert" dDetail:@"The United States Marine Corps award two types of Marine Corps Marksmanship Qualification Badges, one for the service rifle and one for the service pistol, to all Marines who qualify at three different qualification levels (highest to lowest): Expert, Sharpshooter, and Marksman. These qualification badges are suspended beneath a brooch which bears the name of the type of weapon (rifle or pistol) and the qualification level earned."];
    
    [msArray addObject:ms01];
    [msArray addObject:ms02];
    [msArray addObject:ms03];
    [msArray addObject:ms04];
    [msArray addObject:ms05];
    [msArray addObject:ms06];
    
    //Aviation Insignia Array
    aiArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ai01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d001.png"] dName:@"Naval Aviator" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft. The naval aviator insignia is a warfare qualification of the United States military that is awarded to those aviators of the United States Navy, Marine Corps, and Coast Guard who have qualified as naval aviators. To qualify for the naval aviator insignia, a service member must complete flight training and be designated a qualified pilot of a military aircraft."];
    DevicesInfo *ai02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d002.png"] dName:@"Naval Flight Officer" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft. The Naval Flight Officer insignia is a breast insignia of the United States military which is awarded to those aviators of the Navy, Marine Corps and Coast Guard who have qualified as Naval Flight Officers (NFO) based on successful completion of flight training. To qualify for the NFO insignia, a service member must have completed officer aviation training and be qualified as a systems operator on board a Naval aircraft. Such qualifications include weapons system operations, airborne tactical data system operations, electronic warfare, and airborne navigation."];
    DevicesInfo *ai03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d003.png"] dName:@"Marine Aerial Navigator" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft. The Marine Aerial Navigator insignia is a military badge of the United States Marine Corps that is issued to Marine Corps enlisted personnel who complete flight training as a navigator on board Marine Corps aircraft."];
    DevicesInfo *ai04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d004.png"] dName:@"Naval Aviation Observer" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft The Naval Aviation Observer Badge is a military badge of the United States armed forces dating from the First World War. The badge was issued to co-pilots, navigators, and flight support personnel who had received a variation in the training required for the standard Pilot's Badge. The Observer Badge survived through the Second World War and into the 1950s, at which time the concept of an Observer Badge was phased out in favor of the modern Aircrew Badge and Navigator-Observer Badges."];
    DevicesInfo *ai05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d005.png"] dName:@"Navy Aircrew" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft. The Naval Aircrew Wings is a qualification badge of the United States military that is awarded by all five branches of armed services to personnel who serve as crew members on board military aircraft. The badge is intended to recognize the training and qualifications required by aircrew of military aircraft. In order to qualify as an aircrew member and receive the Aircrew Badge, such personnel typically undergo extensive training in flight operations of naval aircraft. Such training includes weapons management, electronic warfare, and water survival. Contrary to most other services, naval aircrewmen do not receive their wings after aircrew school. Rather, they receive their wings only after completing their platform respective Personnel Qualification Standards (PQS) (roughly 1 year past the completion of training)."];
    DevicesInfo *ai06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d006.png"] dName:@"Marine Corps Combat Aircrew" dDetail:@"Aviation Insignia are breast insignia which are issued to Marines who are qualified or designated to perform duties related to operation and support of Marine aircraft. The Marine Combat Aircrew Badge is a decoration of the United States Marine Corps which is awarded to those enlisted personnel who have served as aircrew members on board combat flights. Current regulations require a set number of combat 'points' to be earned before wear is authorized. It is not authorized to wear both the Combat Aircrew and Naval Aircrew pins at the same time."];
    
    [aiArray addObject:ai01];
    [aiArray addObject:ai02];
    [aiArray addObject:ai03];
    [aiArray addObject:ai04];
    [aiArray addObject:ai05];
    [aiArray addObject:ai06];
    
    //Parachutist Insignia Array
    piArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *pi01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d013.png"] dName:@"Naval Parachutist" dDetail:@"The Parachutist Insignia, also known as 'lead sleds', is awarded to personnel upon successful completion of the Basic Airborne Course at the Army Airborne School. The basic insignia is issued for completion of basic parachutist training, five qualifying jumps. The Navy and Marine Corps Parachutist breast insignia, also known as 'gold wings' are issued after five additional qualifying jumps."];
    DevicesInfo *pi02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d014.png"] dName:@"Basic Parachutist" dDetail:@"The Parachutist Insignia, also known as 'lead sleds', is awarded to personnel upon successful completion of the Basic Airborne Course at the Army Airborne School. The basic insignia is issued for completion of basic parachutist training, five qualifying jumps. The Navy and Marine Corps Parachutist breast insignia, also known as 'gold wings' are issued after five additional qualifying jumps."];
    
    [piArray addObject:pi01];
    [piArray addObject:pi02];
    
    //Diver Insignia Array
    diArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *di01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d007.png"] dName:@"Master Diver" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. The Naval deep sea diver qualification insignia are awarded in four degrees: Second-Class Diver; First-Class Diver; Master Diver; and Diving Officer. However, the Marine Corps does not award the Diving Officer insignia to its officers."];
    DevicesInfo *di02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d008.png"] dName:@"Diving Medical Technician" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. The Diving Medical Officer and the Diving Medical Technician insignia are awarded to naval medical personnel qualified as divers or medical technicians, respectively. Since the Marine Corps and the Coast Guard have no organic medical officers, they do not issue the Diving Medical Officer Insignia."];
    DevicesInfo *di03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d009.png"] dName:@"First Class Diver" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. The Naval deep sea diver qualification insignia are awarded in four degrees: Second-Class Diver; First-Class Diver; Master Diver; and Diving Officer. However, the Marine Corps does not award the Diving Officer insignia to its officers."];
    DevicesInfo *di04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d010.png"] dName:@"Combat Diver" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. In  2001, the Marine Corps authorized the creation of a new badge, the Combatant Diver Insignia, attesting to the wearer's closed-circuit rebreather and reconnaissance combat diver training; the gold-colored Combatant Diver Insignia depicts a wetsuit hood, low-profile diving mask, and chest-mounted rebreather."];
    DevicesInfo *di05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d011.png"] dName:@"Second Class Diver" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. The Naval deep sea diver qualification insignia are awarded in four degrees: Second-Class Diver; First-Class Diver; Master Diver; and Diving Officer. However, the Marine Corps does not award the Diving Officer insignia to its officers."];
    DevicesInfo *di06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d012.png"] dName:@"Scuba Diver" dDetail:@"United States naval diver insignia are awarded, per degree of qualification, to Sailors, Marines, and Coast Guardsmen. The elementary naval diver insignia is the Scuba Diver Insignia, awarded upon qualifying as a basic naval diver. The silver-colored insignia features an old-fashioned diving mask and open-circuit breathing apparatus."];
    
    [diArray addObject:di01];
    [diArray addObject:di02];
    [diArray addObject:di03];
    [diArray addObject:di04];
    [diArray addObject:di05];
    [diArray addObject:di06];
    
    //EOD Insigina Array
    eiArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ei01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d018.png"] dName:@"Basic EOD" dDetail:@"The Explosive Ordnance Disposal Badge is a military badge of the United States Armed Forces which recognizes those service members, qualified as explosive ordnance disposal (EOD) technicians, who are specially trained to deal with the construction, deployment, disarmament, and disposal of high explosive munitions and may include other types of ordnance such as nuclear, biological and chemical weapons along with improvised explosive devices (IED) and improvised nuclear devices (IND). Also known as the ‘EOD Badge’ or ‘Crab’, the decoration is issued by the United States Army, Air Force, Navy and Marine Corps. The EOD Badge is the only occupational badge awarded to all four services under the United States Department of Defense. First created in the 1950s, the EOD Badge is issued in three levels and is identical for all branches of service. Although each service has its own requirements the basic EOD badge is issued upon completion of explosive handling training and between 18–24 months of on-the-job field training. The Senior EOD Badge is issued after 3–5 years as an explosive ordnance specialist and the Master Explosive Ordnance Disposal Badge is issued after 7–15 years of service in a senior supervisory position."];
    DevicesInfo *ei02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d019.png"] dName:@"Senior EOD" dDetail:@"The Explosive Ordnance Disposal Badge is a military badge of the United States Armed Forces which recognizes those service members, qualified as explosive ordnance disposal (EOD) technicians, who are specially trained to deal with the construction, deployment, disarmament, and disposal of high explosive munitions and may include other types of ordnance such as nuclear, biological and chemical weapons along with improvised explosive devices (IED) and improvised nuclear devices (IND). Also known as the ‘EOD Badge’ or ‘Crab’, the decoration is issued by the United States Army, Air Force, Navy and Marine Corps. The EOD Badge is the only occupational badge awarded to all four services under the United States Department of Defense. First created in the 1950s, the EOD Badge is issued in three levels and is identical for all branches of service. Although each service has its own requirements the basic EOD badge is issued upon completion of explosive handling training and between 18–24 months of on-the-job field training. The Senior EOD Badge is issued after 3–5 years as an explosive ordnance specialist and the Master Explosive Ordnance Disposal Badge is issued after 7–15 years of service in a senior supervisory position."];
    DevicesInfo *ei03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d020.png"] dName:@"Master EOD" dDetail:@"The Explosive Ordnance Disposal Badge is a military badge of the United States Armed Forces which recognizes those service members, qualified as explosive ordnance disposal (EOD) technicians, who are specially trained to deal with the construction, deployment, disarmament, and disposal of high explosive munitions and may include other types of ordnance such as nuclear, biological and chemical weapons along with improvised explosive devices (IED) and improvised nuclear devices (IND). Also known as the ‘EOD Badge’ or ‘Crab’, the decoration is issued by the United States Army, Air Force, Navy and Marine Corps. The EOD Badge is the only occupational badge awarded to all four services under the United States Department of Defense. First created in the 1950s, the EOD Badge is issued in three levels and is identical for all branches of service. Although each service has its own requirements the basic EOD badge is issued upon completion of explosive handling training and between 18–24 months of on-the-job field training. The Senior EOD Badge is issued after 3–5 years as an explosive ordnance specialist and the Master Explosive Ordnance Disposal Badge is issued after 7–15 years of service in a senior supervisory position."];
    
    [eiArray addObject:ei01];
    [eiArray addObject:ei02];
    [eiArray addObject:ei03];
    
    //Identification Badges Array
    idArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *id01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d033.png"] dName:@"MC MP Badge" dDetail:@"Military police perform assigned military law enforcement duties to uphold the criminal justice system, maintain good order and discipline, and support the commander's law enforcement and security requirements in peacetime and combat operations. Typical duties include foot and motorized patrol, control of pedestrian and vehicular traffic, flight line security, crime prevention/physical security, desk sergeant, communications dispatcher, squad leader, operations sergeant, platoon sergeant, and provost sergeant billets. MOS 5811 is very demanding in that the military police are confronted with every form of violation and criminal liability, misdemeanor through felony."];
    DevicesInfo *id02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d034.png"] dName:@"MC MP Corrections Badge" dDetail:@"Correctional specialists guard and provide 24-hour supervision of the daily activities of confined and restrained personnel at Naval Brigs and Correctional Custody Units to prevent disturbances and escapes. Correctional specialists perform routine inspections, process personnel for confinement and release; transport prisoners, absentees and deserters; manage prisoner's funds and personal property; observe and report meaningful changes in prisoner behavior; and report infractions of the unit's regulations. Corrections specialist also provide commanders with the mission of Regional Detention Facilities in theater with subject matter expertise on the safe, humane and efficient care of enemy detainees entrusted to their care."];
    DevicesInfo *id03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d035.png"] dName:@"MC CID Agent Badge" dDetail:@"United States Marine Corps Criminal Investigation Division (USMC CID) is a federal law enforcement agency that investigates crimes against persons and property within the United States Marine Corps. CID agents operate under the Provost Marshal's Office or the Marine Corps Police Department Chief of Police. Those major crimes not under the jurisdiction of CID are referred to the Naval Criminal Investigative Service (NCIS) according to a memorandum of understanding signed in 1999."];
    
    [idArray addObject:id01];
    [idArray addObject:id02];
    [idArray addObject:id03];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (deviceInt == 0)
    {
        return [rdArray count];
    }
    else if (deviceInt == 1)
    {
        return [msArray count];
    }
    else if (deviceInt == 2)
    {
        return [aiArray count];
    }
    else if (deviceInt == 3)
    {
        return [piArray count];
    }
    else if (deviceInt == 4)
    {
        return [diArray count];
    }
    else if (deviceInt == 5)
    {
        return [eiArray count];
    }
    else if (deviceInt == 6)
    {
        return [idArray count];
    }
    [self.deviceTable reloadData];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DeviceCustomCell *cell = (DeviceCustomCell *) [deviceTable dequeueReusableCellWithIdentifier:@"DeviceDetails"];
    
    if (cell != nil)
    {
        if (deviceInt == 0)
        {
            titleLabel.text = [NSString stringWithFormat:@"Ribbons/Medals Devices"];
            DevicesInfo *devicesInfo = [rdArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 1)
        {
            titleLabel.text = [NSString stringWithFormat:@"Marksmanship Badges"];
            DevicesInfo *devicesInfo = [msArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 2)
        {
            titleLabel.text = [NSString stringWithFormat:@"Aviation Insignia"];
            DevicesInfo *devicesInfo = [aiArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 3)
        {
            titleLabel.text = [NSString stringWithFormat:@"Parachutist Insignia"];
            DevicesInfo *devicesInfo = [piArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 4)
        {
            titleLabel.text = [NSString stringWithFormat:@"Diver Insignia"];
            DevicesInfo *devicesInfo = [diArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 5)
        {
            titleLabel.text = [NSString stringWithFormat:@"EOD Insinia"];
            DevicesInfo *devicesInfo = [eiArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 6)
        {
            titleLabel.text = [NSString stringWithFormat:@"Identification Badges"];
            DevicesInfo *devicesInfo = [idArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
    }
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DeviceDetails"])
    {
        NSIndexPath *indexPath = [self.deviceTable indexPathForSelectedRow];
        DeviceDetailViewController *deviceDetailViewController = segue.destinationViewController;
        
        if (deviceDetailViewController != nil)
        {
            if (deviceInt == 0)
            {
                DevicesInfo *rdInfo = [rdArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = rdInfo;
            }
            else if (deviceInt == 1)
            {
                DevicesInfo *msInfo = [msArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = msInfo;
            }
            else if (deviceInt == 2)
            {
                DevicesInfo *aiInfo = [aiArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = aiInfo;
            }
            else if (deviceInt ==3)
            {
                DevicesInfo *piInfo = [piArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = piInfo;
            }
            else if (deviceInt == 4)
            {
                DevicesInfo *diInfo = [diArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = diInfo;
            }
            else if (deviceInt == 5)
            {
                DevicesInfo *eiInfo = [eiArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = eiInfo;
            }
            else if (deviceInt == 6)
            {
                DevicesInfo *idInfo = [idArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = idInfo;
            }
        }
    }
}


@end
