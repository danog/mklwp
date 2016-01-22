.class public Lcom/custom/lwp/suvbsib/LiveWallpaperSettings;
.super Landroid/preference/PreferenceActivity;
.source "LiveWallpaperSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 14
    const-string v1, "com.custom.lwp.suvbsib"

    .line 13
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 15
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperSettings;->addPreferencesFromResource(I)V

    .line 16
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 19
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 25
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 26
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 28
    return-void
.end method
