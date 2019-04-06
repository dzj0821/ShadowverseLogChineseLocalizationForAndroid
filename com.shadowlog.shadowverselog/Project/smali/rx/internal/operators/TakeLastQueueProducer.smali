.class final Lrx/internal/operators/TakeLastQueueProducer;
.super Ljava/lang/Object;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/TakeLastQueueProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile emittingStarted:Z

.field private final notification:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lrx/internal/operators/TakeLastQueueProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    .local p1, "n":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p2, "q":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 33
    iput-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    .line 36
    return-void
.end method


# virtual methods
.method emit(J)V
    .locals 15
    .param p1, "previousRequested"    # J

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v0, v0, v12

    if-nez v0, :cond_2

    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 73
    .local v11, "value":Ljava/lang/Object;
    iget-object v1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v12, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v12, v11}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 76
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 124
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    throw v0

    .line 85
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 91
    :cond_3
    iget-wide v8, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 92
    .local v8, "numToEmit":J
    const/4 v7, 0x0

    .line 94
    .local v7, "emitted":I
    :goto_2
    const-wide/16 v0, 0x1

    sub-long/2addr v8, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v10

    .local v10, "o":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 95
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, v1, v10}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 106
    .end local v10    # "o":Ljava/lang/Object;
    :cond_4
    iget-wide v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 107
    .local v2, "oldRequested":J
    int-to-long v0, v7

    sub-long v4, v2, v0

    .line 108
    .local v4, "newRequested":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    goto :goto_1
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 51
    iget-wide v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    .line 56
    sget-object v2, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 60
    .local v0, "_c":J
    :goto_1
    iget-boolean v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    goto :goto_0

    .line 58
    .end local v0    # "_c":J
    :cond_2
    sget-object v2, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    .restart local v0    # "_c":J
    goto :goto_1
.end method

.method startEmitting()V
    .locals 2

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 45
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    .line 47
    :cond_0
    return-void
.end method
