.class final Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private completed:Z

.field volatile counter:J

.field private failure:Z

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final queue:Lrx/internal/util/RxRingBuffer;

.field private final recursiveScheduler:Lrx/Scheduler$Worker;

.field private volatile requested:J

.field private final scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 81
    const-class v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Scheduler;Lrx/Subscriber;)V
    .locals 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 69
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 71
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 72
    iput-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    .line 73
    iput-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->failure:Z

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:J

    .line 86
    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 87
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    .line 88
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;-><init>(Lrx/Scheduler$Worker;Lrx/internal/util/RxRingBuffer;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    .line 89
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {p2, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {p2, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 99
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {p2, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 100
    invoke-virtual {p2, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    .prologue
    .line 65
    invoke-direct {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->pollQueue()V

    return-void
.end method

.method private pollQueue()V
    .locals 8

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const-wide/16 v6, 0x0

    .line 162
    const/4 v0, 0x0

    .line 168
    .local v0, "emitted":I
    :cond_0
    sget-object v2, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 170
    :cond_1
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 171
    iget-boolean v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->failure:Z

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v2}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v3, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 207
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 182
    :cond_3
    sget-object v2, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    .line 183
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v2}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .restart local v1    # "o":Ljava/lang/Object;
    if-nez v1, :cond_5

    .line 186
    sget-object v2, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 201
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_2
    sget-object v2, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    .line 204
    if-lez v0, :cond_2

    .line 205
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    goto :goto_1

    .line 189
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v3, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "o":Ljava/lang/Object;
    :cond_6
    sget-object v2, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    goto :goto_2
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 130
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const/4 v1, 0x1

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->unsubscribe()V

    .line 140
    iput-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    .line 142
    iput-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->failure:Z

    .line 143
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onError(Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->completed:Z

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 107
    return-void
.end method

.method protected schedule()V
    .locals 4

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 158
    :cond_0
    return-void
.end method
