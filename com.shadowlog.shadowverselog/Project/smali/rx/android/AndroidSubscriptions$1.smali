.class final Lrx/android/AndroidSubscriptions$1;
.super Ljava/lang/Object;
.source "AndroidSubscriptions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unsubscribe:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lrx/android/AndroidSubscriptions$1;->val$unsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 38
    iget-object v1, p0, Lrx/android/AndroidSubscriptions$1;->val$unsubscribe:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 41
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/android/AndroidSubscriptions$1$1;

    invoke-direct {v1, p0, v0}, Lrx/android/AndroidSubscriptions$1$1;-><init>(Lrx/android/AndroidSubscriptions$1;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    goto :goto_0
.end method
