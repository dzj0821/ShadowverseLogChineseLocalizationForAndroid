.class public Lcom/shadowlog/shadowverselog/MeasurementGAManager;
.super Landroid/app/Application;
.source "MeasurementGAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;
    }
.end annotation


# instance fields
.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->mTrackers:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method private declared-synchronized getTracker(Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .param p1, "trackerId"    # Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 26
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 27
    sget-object v2, Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;->APP_TRACKER:Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;

    if-ne p1, v2, :cond_1

    const v2, 0x7f0f0001

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 31
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 32
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 27
    .restart local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;->GLOBAL_TRACKER:Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;

    if-ne p1, v2, :cond_2

    const v2, 0x7f0f0001

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x7f0f0000

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 24
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static sendGAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string p3, "-"

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/MeasurementGAManager;

    sget-object v2, Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;->APP_TRACKER:Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;

    invoke-direct {v1, v2}, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->getTracker(Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 48
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 49
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public static sendGAScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/MeasurementGAManager;

    sget-object v2, Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;->APP_TRACKER:Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;

    invoke-direct {v1, v2}, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->getTracker(Lcom/shadowlog/shadowverselog/MeasurementGAManager$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 39
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 41
    return-void
.end method
