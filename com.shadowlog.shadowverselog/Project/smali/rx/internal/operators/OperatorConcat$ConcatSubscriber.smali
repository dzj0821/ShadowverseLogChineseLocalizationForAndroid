.class final Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatSubscriber"
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
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final current:Lrx/subscriptions/SerialSubscription;

.field volatile currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 80
    const-class v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V
    .locals 1
    .param p2, "current"    # Lrx/subscriptions/SerialSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 66
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 84
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    .line 85
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber$1;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->add(Lrx/Subscription;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requestFromChild(J)V

    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .prologue
    .line 65
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->decrementRequested()V

    return-void
.end method

.method private decrementRequested()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 122
    return-void
.end method

.method private requestFromChild(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-nez v0, :cond_1

    iget v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->wip:I

    if-lez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->requestMore(J)V

    goto :goto_0
.end method


# virtual methods
.method completeInner()V
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 149
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 152
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 144
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->unsubscribe()V

    .line 136
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onNext(Lrx/Observable;)V

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
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->WIP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->subscribeNext()V

    .line 130
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->request(J)V

    .line 100
    return-void
.end method

.method subscribeNext()V
    .locals 6

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requested:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 156
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 161
    .local v1, "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    iget-wide v4, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->requested:J

    invoke-direct {v2, p0, v3, v4, v5}, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;J)V

    iput-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    .line 162
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->current:Lrx/subscriptions/SerialSubscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v2, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 163
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;

    invoke-virtual {v1, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 167
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "obs":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 168
    .restart local v0    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method
