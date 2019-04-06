.class final Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingSubscriber"
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


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field exception:Ljava/lang/Throwable;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field requestedCount:J

.field volatile terminated:Z


# direct methods
.method public constructor <init>(ILrx/Subscriber;)V
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 42
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 53
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    .line 55
    return-void
.end method


# virtual methods
.method drain()V
    .locals 10

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    if-eqz v5, :cond_1

    .line 100
    monitor-exit p0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 103
    iget-wide v2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    .line 104
    .local v2, "n":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    const/4 v4, 0x0

    .line 108
    .local v4, "skipFinal":Z
    :goto_1
    const/4 v0, 0x0

    .line 109
    .local v0, "emitted":I
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_5

    .line 110
    :try_start_1
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 112
    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->terminated:Z

    if-eqz v5, :cond_5

    .line 113
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 114
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 149
    :goto_3
    if-nez v4, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 152
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 104
    .end local v0    # "emitted":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "n":J
    .end local v4    # "skipFinal":Z
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 116
    .restart local v0    # "emitted":I
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "n":J
    .restart local v4    # "skipFinal":Z
    :cond_2
    :try_start_4
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 149
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_2
    move-exception v5

    if-nez v4, :cond_3

    .line 150
    monitor-enter p0

    .line 151
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 152
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :cond_3
    throw v5

    .line 122
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_4
    :try_start_6
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    iget-object v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 123
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    goto :goto_2

    .line 127
    .end local v1    # "o":Ljava/lang/Object;
    :cond_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 129
    :try_start_7
    iget-wide v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 131
    iget-object v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 132
    const/4 v4, 0x1

    .line 133
    const/4 v5, 0x0

    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 134
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 149
    if-nez v4, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    const/4 v5, 0x0

    :try_start_8
    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 152
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v5

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    .line 136
    :cond_6
    const-wide v2, 0x7fffffffffffffffL

    .line 146
    :goto_4
    :try_start_9
    monitor-exit p0

    goto :goto_1

    :catchall_4
    move-exception v5

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 138
    :cond_7
    if-nez v0, :cond_8

    .line 139
    const/4 v4, 0x1

    .line 140
    const/4 v5, 0x0

    :try_start_b
    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 141
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 149
    if-nez v4, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    const/4 v5, 0x0

    :try_start_c
    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->emitting:Z

    .line 152
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5

    .line 143
    :cond_8
    :try_start_d
    iget-wide v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J

    .line 144
    iget-wide v2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->requestedCount:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_4

    .line 152
    :catchall_6
    move-exception v5

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v5
.end method

.method init()V
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber$1;-><init>(Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 71
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->terminated:Z

    .line 94
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->drain()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->terminated:Z

    if-nez v0, :cond_0

    .line 86
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->exception:Ljava/lang/Throwable;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->terminated:Z

    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->drain()V

    .line 90
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->drain()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
