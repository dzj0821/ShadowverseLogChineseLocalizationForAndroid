.class public Lrx/android/schedulers/HandlerThreadScheduler;
.super Lrx/Scheduler;
.source "HandlerThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/android/schedulers/HandlerThreadScheduler;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
