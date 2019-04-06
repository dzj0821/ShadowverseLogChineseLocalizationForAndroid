.class Lrx/android/content/OnSubscribeSharedPreferenceChange;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lrx/android/content/OnSubscribeSharedPreferenceChange;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lrx/android/content/OnSubscribeSharedPreferenceChange;

    .prologue
    .line 22
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    new-instance v0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;

    invoke-direct {v0, p0, p1}, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;-><init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Lrx/Subscriber;)V

    .line 39
    .local v0, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    new-instance v1, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;

    invoke-direct {v1, p0, v0}, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;-><init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    iget-object v1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    return-void
.end method
