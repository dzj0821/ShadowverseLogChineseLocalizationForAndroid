.class public final Lrx/android/AndroidSubscriptions;
.super Ljava/lang/Object;
.source "AndroidSubscriptions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 1
    .param p0, "unsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 34
    new-instance v0, Lrx/android/AndroidSubscriptions$1;

    invoke-direct {v0, p0}, Lrx/android/AndroidSubscriptions$1;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
