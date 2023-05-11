import Foundation

@objc(WMFNavigationEventsFunnel)
final internal class NavigationEventsFunnel: NSObject {
    @objc internal static let shared = NavigationEventsFunnel()

    internal enum NavigationAction: String, Codable {
        case explore
        case places
        case saved
        case savedAll = "saved_all"
        case savedLists = "saved_lists"
        case history
        case search
        case settingsOpenNav = "setting_open_nav"
        case settingsOpenExplore = "setting_open_explore"
        case settingsAccount = "setting_account"
        case settingsClose = "setting_close"
        case settingsFundraise = "setting_fundraise"
        case settingsLanguages = "setting_languages"
        case settingsSearch = "setting_search"
        case settingsExploreFeed = "setting_explorefeed"
        case settingsNotifications = "setting_notifications"
        case settingsReadPrefs = "setting_read_prefs"
        case settingsStorageSync = "setting_storagesync"
        case settingsReadDanger = "setting_read_danger"
        case settingsClearData = "setting_cleardata"
        case settingsPrivacy = "setting_privacy"
        case settingsTOS = "setting_tos"
        case settingsUsageReports = "setting_usage_reports"
        case settingsRate = "setting_rate"
        case settingsHelp = "setting_help"
        case settingsAbout = "setting_about"
        case article_toolbar_toc
        case article_toolbar_lang
        case article_toolbar_lang_success
        case article_toolbar_save
        case article_toolbar_save_success
        case article_toolbar_share
        case article_toolbar_share_success
        case article_toolbar_appearance
        case article_toolbar_search
        case article_toolbar_search_success
    }

    private struct Event: EventInterface {
        static var schema: EventPlatformClient.Schema = .navigation
        let action: NavigationAction
    }

    func logEvent(action: NavigationAction) {
        let event = Event(action: action)
        EventPlatformClient.shared.submit(stream: .navigation, event: event)
    }

    @objc func logTappedExplore() {
            logEvent(action: .explore)
        }

        @objc func logTappedPlaces() {
            logEvent(action: .places)
        }

        @objc func logTappedSaved() {
            logEvent(action: .saved)
        }

        @objc func logTappedHistory() {
            logEvent(action: .history)
        }

        @objc func logTappedSearch() {
            logEvent(action: .search)
        }

        @objc func logTappedSettingsFromTabBar() {
            logEvent(action: .settingsOpenNav)
        }

        @objc func logTappedSettingsFromExplore() {
            logEvent(action: .settingsOpenExplore)
        }

        func logTappedSavedAllArticles() {
            logEvent(action: .savedAll)
        }

        func logTappedSavedReadingLists() {
            logEvent(action: .savedLists)
        }

        @objc func logTappedSettingsCloseButton() {
            logEvent(action: .settingsClose)
        }

        @objc func logTappedSettingsLoginLogout() {
            logEvent(action: .settingsAccount)
        }

        @objc func logTappedSettingsSupportWikipedia() {
            logEvent(action: .settingsFundraise)
        }

        @objc func logTappedSettingsLanguages() {
            logEvent(action: .settingsLanguages)
        }

        @objc func logTappedSettingsSearch() {
            logEvent(action: .settingsSearch)
        }

        @objc func logTappedSettingsExploreFeed() {
            logEvent(action: .settingsExploreFeed)
        }

        @objc func logTappedSettingsNotifications() {
            logEvent(action: .settingsNotifications)
        }

        @objc func logTappedSettingsReadingPreferences() {
            logEvent(action: .settingsReadPrefs)
        }

        @objc func logTappedSettingsArticleStorageAndSyncing() {
            logEvent(action: .settingsStorageSync)
        }

        @objc func logTappedSettingsReadingListDangerZone() {
            logEvent(action: .settingsReadDanger)
        }

        @objc func logTappedSettingsClearCachedData() {
            logEvent(action: .settingsClearData)
        }

        @objc func logTappedSettingsPrivacyPolicy() {
            logEvent(action: .settingsPrivacy)
        }

        @objc func logTappedSettingsTermsOfUse() {
            logEvent(action: .settingsTOS)
        }

        @objc func logTappedSettingsSendUsageReports() {
            logEvent(action: .settingsUsageReports)
        }

        @objc func logTappedSettingsRateTheApp() {
            logEvent(action: .settingsRate)
        }

        @objc func logTappedSettingsHelp() {
            logEvent(action: .settingsHelp)
        }

        @objc func logTappedSettingsAbout() {
            logEvent(action: .settingsAbout)
        }
}
