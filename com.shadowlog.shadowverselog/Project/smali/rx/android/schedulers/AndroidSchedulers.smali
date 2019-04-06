.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final MAIN_THREAD_SCHEDULER:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler;

    new-instance v1, Landroid/os/Handler;

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static handlerThread(Landroid/os/Handler;)Lrx/Scheduler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/HandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static mainThread()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    return-object v0
.end method
