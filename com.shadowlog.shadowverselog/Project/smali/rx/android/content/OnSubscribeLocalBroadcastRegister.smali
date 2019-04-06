.class Lrx/android/content/OnSubscribeLocalBroadcastRegister;
.super Ljava/lang/Object;
.source "OnSubscribeLocalBroadcastRegister.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/content/Intent;>;"
    iget-object v3, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 41
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;

    invoke-direct {v0, p0, p1}, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;-><init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Lrx/Subscriber;)V

    .line 48
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;

    invoke-direct {v3, p0, v1, v0}, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;-><init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Landroid/support/v4/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;)V

    invoke-static {v3}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 55
    .local v2, "subscription":Lrx/Subscription;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 56
    iget-object v3, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    return-void
.end method
