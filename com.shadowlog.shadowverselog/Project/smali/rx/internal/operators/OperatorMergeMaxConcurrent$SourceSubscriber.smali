.class final Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorMergeMaxConcurrent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMergeMaxConcurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
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


# static fields
.field static final WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field active:I

.field final csub:Lrx/subscriptions/CompositeSubscription;

.field final guard:Ljava/lang/Object;

.field final maxConcurrency:I

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final s:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    const-string v1, "wip"

    .line 61
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    return-void
.end method

.method public constructor <init>(ILrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .locals 1
    .param p1, "maxConcurrency"    # I
    .param p3, "csub"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    .local p2, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 70
    iput p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->maxConcurrency:I

    .line 71
    iput-object p2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    .line 72
    iput-object p3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->wip:I

    .line 76
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 142
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->unsubscribe()V

    .line 135
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->onNext(Lrx/Observable;)V

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
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribeNext()V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method subscribeNext()V
    .locals 5

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 90
    .local v1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-eqz v1, :cond_0

    iget v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    iget v4, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->maxConcurrency:I

    if-lt v2, v4, :cond_1

    .line 91
    :cond_0
    monitor-exit v3

    .line 129
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    .line 94
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 95
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    new-instance v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;)V

    .line 125
    .local v0, "itemSub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 126
    sget-object v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 128
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 95
    .end local v0    # "itemSub":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
