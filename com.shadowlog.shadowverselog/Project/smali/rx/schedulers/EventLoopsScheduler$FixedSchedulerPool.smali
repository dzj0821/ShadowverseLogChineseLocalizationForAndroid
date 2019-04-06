.class final Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lrx/schedulers/EventLoopsScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    iput v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 44
    iget v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    new-array v1, v1, [Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    iput-object v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-static {}, Lrx/schedulers/EventLoopsScheduler;->access$000()Lrx/internal/util/RxThreadFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getEventLoop()Lrx/schedulers/EventLoopsScheduler$PoolWorker;
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/schedulers/EventLoopsScheduler$PoolWorker;

    iget-wide v2, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    iget v1, p0, Lrx/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
