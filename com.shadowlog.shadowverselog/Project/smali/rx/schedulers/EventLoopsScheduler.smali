.class Lrx/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/EventLoopsScheduler$PoolWorker;,
        Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxComputationThreadPool-"


# instance fields
.field final pool:Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxComputationThreadPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 63
    new-instance v0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0}, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>()V

    iput-object v0, p0, Lrx/schedulers/EventLoopsScheduler;->pool:Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    .line 64
    return-void
.end method

.method static synthetic access$000()Lrx/internal/util/RxThreadFactory;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/schedulers/EventLoopsScheduler;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler;->pool:Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v0
.end method
