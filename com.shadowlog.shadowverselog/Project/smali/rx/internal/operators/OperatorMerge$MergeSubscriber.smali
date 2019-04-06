.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final DRAIN_ACTION:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private volatile childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/SubscriptionIndexedRingBuffer",
            "<",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private completed:Z

.field private final delayErrors:Z

.field private emitLock:Z

.field private exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field lastDrainedIndex:I

.field private final mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private missedEmitting:I

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private scalarValueQueue:Lrx/internal/util/RxRingBuffer;

.field private wip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;Z)V
    .locals 2
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 94
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 107
    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    .line 108
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 335
    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    .line 380
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber$1;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->DRAIN_ACTION:Lrx/functions/Func1;

    .line 127
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    .line 128
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 129
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 131
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 132
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 133
    return-void
.end method

.method static synthetic access$1000(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/operators/OperatorMerge$MergeProducer;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    return-object v0
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)I
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    return v0
.end method

.method static synthetic access$600(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Lrx/internal/util/RxRingBuffer;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    return-void
.end method

.method static synthetic access$800(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Ljava/lang/Throwable;Z)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic access$900(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .prologue
    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v0

    return v0
.end method

.method private drainAndComplete()V
    .locals 3

    .prologue
    .line 463
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    .line 464
    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-eqz v1, :cond_3

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v0, :cond_2

    .line 470
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 483
    .end local v0    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :goto_0
    return-void

    .line 468
    .restart local v0    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 472
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 473
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 481
    .end local v0    # "es":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_3
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method private drainChildrenQueues()V
    .locals 3

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->DRAIN_ACTION:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastDrainedIndex:I

    .line 344
    :cond_0
    return-void
.end method

.method private drainQueuesIfNeeded()Z
    .locals 4

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    :cond_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    const/4 v0, 0x0

    .line 316
    .local v0, "emitted":I
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainScalarValueQueue()I

    move-result v0

    .line 317
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainChildrenQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .line 322
    .local v1, "moreToDrain":Z
    if-lez v0, :cond_1

    .line 323
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 325
    :cond_1
    if-nez v1, :cond_0

    .line 326
    const/4 v2, 0x1

    .line 330
    .end local v0    # "emitted":I
    .end local v1    # "moreToDrain":Z
    :goto_0
    return v2

    .line 319
    .restart local v0    # "emitted":I
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .restart local v1    # "moreToDrain":Z
    throw v2

    .line 330
    .end local v0    # "emitted":I
    .end local v1    # "moreToDrain":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private drainScalarValueQueue()I
    .locals 12

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const-wide/16 v8, 0x0

    .line 350
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    if-eqz v3, :cond_4

    .line 351
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v4

    .line 352
    .local v4, "r":J
    const/4 v0, 0x0

    .line 353
    .local v0, "emittedWhileDraining":I
    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    .line 355
    const/4 v2, 0x0

    .line 356
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v3}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v2

    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 357
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v8, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v3, v8, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 362
    move-wide v6, v4

    .line 363
    .local v6, "toEmit":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    int-to-long v8, v1

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 364
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v3}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 365
    .restart local v2    # "o":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 373
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    sget-object v3, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v8, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    neg-int v9, v0

    int-to-long v10, v9

    invoke-virtual {v3, v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 377
    .end local v0    # "emittedWhileDraining":I
    .end local v1    # "i":I
    .end local v4    # "r":J
    .end local v6    # "toEmit":J
    :cond_2
    :goto_2
    return v0

    .line 368
    .restart local v0    # "emittedWhileDraining":I
    .restart local v1    # "i":I
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v4    # "r":J
    .restart local v6    # "toEmit":J
    :cond_3
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->on:Lrx/internal/operators/NotificationLite;

    iget-object v8, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v3, v8, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v0, 0x1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    .end local v0    # "emittedWhileDraining":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    .end local v4    # "r":J
    .end local v6    # "toEmit":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private declared-synchronized getEmitLock()Z
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    if-eqz v2, :cond_0

    .line 301
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    monitor-exit p0

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 306
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNewSource(Lrx/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-direct {v2}, Lrx/internal/util/SubscriptionIndexedRingBuffer;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    .line 166
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, "producerIfNeeded":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v2}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 184
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 186
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;Lrx/internal/operators/OperatorMerge$MergeProducer;)V

    .line 187
    .local v0, "i":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    invoke-virtual {v2, v0}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->add(Lrx/Subscription;)I

    move-result v2

    iput v2, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->sindex:I

    .line 188
    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 189
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 192
    :cond_2
    return-void
.end method

.method private handleScalarSynchronousObservable(Lrx/internal/util/ScalarSynchronousObservable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservableWithoutRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservableWithRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V

    goto :goto_0
.end method

.method private handleScalarSynchronousObservableWithRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "emitted":Z
    const/4 v2, 0x0

    .line 251
    .local v2, "isReturn":Z
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-static {v6}, Lrx/internal/operators/OperatorMerge$MergeProducer;->access$000(Lrx/internal/operators/OperatorMerge$MergeProducer;)J

    move-result-wide v4

    .line 252
    .local v4, "r":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 253
    const/4 v1, 0x1

    .line 254
    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 255
    sget-object v6, Lrx/internal/operators/OperatorMerge$MergeProducer;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v7, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->mergeProducer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const/4 v2, 0x1

    .line 260
    :cond_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v3

    .line 262
    .local v3, "moreToDrain":Z
    if-eqz v3, :cond_1

    .line 263
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    .line 265
    :cond_1
    if-eqz v1, :cond_2

    .line 266
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 268
    :cond_2
    if-eqz v2, :cond_3

    .line 281
    .end local v1    # "emitted":Z
    .end local v2    # "isReturn":Z
    .end local v3    # "moreToDrain":Z
    .end local v4    # "r":J
    :goto_0
    return-void

    .line 260
    .restart local v1    # "emitted":Z
    .restart local v2    # "isReturn":Z
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v3

    .restart local v3    # "moreToDrain":Z
    throw v6

    .line 275
    .end local v1    # "emitted":Z
    .end local v2    # "isReturn":Z
    .end local v3    # "moreToDrain":Z
    :cond_3
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->initScalarValueQueueIfNeeded()V

    .line 277
    :try_start_1
    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleScalarSynchronousObservableWithoutRequestLimits(Lrx/internal/util/ScalarSynchronousObservable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ScalarSynchronousObservable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getEmitLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .line 229
    .local v1, "moreToDrain":Z
    if-eqz v1, :cond_0

    .line 230
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainQueuesIfNeeded()Z

    .line 232
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 241
    .end local v1    # "moreToDrain":Z
    :goto_0
    return-void

    .line 227
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->releaseEmitLock()Z

    move-result v1

    .restart local v1    # "moreToDrain":Z
    throw v3

    .line 235
    .end local v1    # "moreToDrain":Z
    :cond_1
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->initScalarValueQueueIfNeeded()V

    .line 237
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v3, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initScalarValueQueueIfNeeded()V
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    .line 286
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 288
    :cond_0
    return-void
.end method

.method private innerError(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "parent"    # Z

    .prologue
    .line 409
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-eqz v1, :cond_6

    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 414
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->exceptions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "sendOnComplete":Z
    monitor-enter p0

    .line 418
    if-nez p2, :cond_1

    .line 419
    :try_start_1
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    .line 421
    :cond_1
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-nez v1, :cond_3

    :cond_2
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-gez v1, :cond_4

    .line 422
    :cond_3
    const/4 v0, 0x1

    .line 424
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    if-eqz v0, :cond_5

    .line 426
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 431
    .end local v0    # "sendOnComplete":Z
    :cond_5
    :goto_0
    return-void

    .line 414
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 424
    .restart local v0    # "sendOnComplete":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 429
    .end local v0    # "sendOnComplete":Z
    :cond_6
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized releaseEmitLock()Z
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 291
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLock:Z

    .line 292
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missedEmitting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 295
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method completeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "s":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 450
    .local v0, "sendOnComplete":Z
    monitor-enter p0

    .line 451
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    .line 452
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-eqz v1, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 455
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->childrenSubscribers:Lrx/internal/util/SubscriptionIndexedRingBuffer;

    iget v2, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->sindex:I

    invoke-virtual {v1, v2}, Lrx/internal/util/SubscriptionIndexedRingBuffer;->remove(I)V

    .line 457
    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 460
    :cond_1
    return-void

    .line 455
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 435
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 436
    .local v0, "c":Z
    monitor-enter p0

    .line 437
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    .line 438
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarValueQueue:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    const/4 v0, 0x1

    .line 441
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->drainAndComplete()V

    .line 446
    :cond_2
    return-void

    .line 441
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v1, 0x1

    .line 402
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    if-nez v0, :cond_0

    .line 403
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->completed:Z

    .line 404
    invoke-direct {p0, p1, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerError(Ljava/lang/Throwable;Z)V

    .line 406
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    instance-of v1, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 148
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .line 149
    .local v0, "t2":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleScalarSynchronousObservable(Lrx/internal/util/ScalarSynchronousObservable;)V

    .line 160
    .end local v0    # "t2":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<+TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    monitor-enter p0

    .line 156
    :try_start_0
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->wip:I

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->handleNewSource(Lrx/Observable;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 140
    return-void
.end method
