.class final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_QUEUE_SIZE:I = 0x400

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_WITH_COMPLETED:I = 0x1

.field private static final TERMINATED_WITH_ERROR:I = 0x2

.field private static final UNTERMINATED:I

.field static final WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile bufferedCount:J

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TR;>;>;"
        }
    .end annotation
.end field

.field volatile completionEmitted:I

.field final elementSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field private final groups:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field volatile requested:J

.field final self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<TK;TT;TR;>;"
        }
    .end annotation
.end field

.field volatile terminated:I

.field volatile wipForUnsubscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "wipForUnsubscribe"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 127
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 139
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "completionEmitted"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 141
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "terminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 145
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 149
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "bufferedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TR;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 77
    iput-object p0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wipForUnsubscribe:I

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    .line 94
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 95
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->elementSelector:Lrx/functions/Func1;

    .line 96
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    .line 97
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$1;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p3, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 107
    return-void
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cleanupGroup(Ljava/lang/Object;)V

    return-void
.end method

.method private cleanupGroup(Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 319
    .local v0, "removed":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    if-eqz v0, :cond_1

    .line 320
    invoke-static {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->self:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    neg-int v3, v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 323
    :cond_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->completeInner()V

    .line 327
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    .line 329
    :cond_1
    return-void
.end method

.method private completeInner()V
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    const/4 v2, 0x1

    .line 399
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    if-ne v0, v2, :cond_0

    .line 405
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0
.end method

.method private createNewGroup(Ljava/lang/Object;)Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    const/4 v4, 0x0

    .line 235
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    invoke-direct {v1, v4}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;-><init>(Lrx/internal/operators/OperatorGroupBy$1;)V

    .line 237
    .local v1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;

    invoke-direct {v6, p0, v1, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$2;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lrx/observables/GroupedObservable;->create(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)Lrx/observables/GroupedObservable;

    move-result-object v0

    .line 298
    .local v0, "go":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TR;>;"
    :cond_0
    iget v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wipForUnsubscribe:I

    .line 299
    .local v3, "wip":I
    if-gtz v3, :cond_1

    move-object v1, v4

    .line 313
    .end local v1    # "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :goto_0
    return-object v1

    .line 302
    .restart local v1    # "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_1
    sget-object v5, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP_FOR_UNSUBSCRIBE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 307
    .local v2, "putIfAbsent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    if-eqz v2, :cond_2

    .line 309
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Group already existed while creating a new one"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private drainIfPossible(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :goto_0
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 380
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, "t":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->getObserver()Lrx/Observer;

    move-result-object v0

    .line 384
    .local v0, "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 385
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 386
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 389
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    goto :goto_0

    .line 395
    .end local v0    # "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    .end local v1    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V
    .locals 8
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    const-wide/16 v6, 0x0

    .line 332
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;

    move-result-object v2

    .line 333
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    .line 334
    .local v0, "keyRequested":Ljava/util/concurrent/atomic/AtomicLong;
    sget-object v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 336
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    :cond_0
    invoke-virtual {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->getObserver()Lrx/Observer;

    move-result-object v1

    .line 339
    .local v1, "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    sget-object v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1, p2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 349
    .end local v1    # "obs":Lrx/Observer;, "Lrx/Observer<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMoreIfNecessary()V

    .line 350
    return-void

    .line 342
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 345
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 346
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    goto :goto_0
.end method

.method private getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "groupedKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    invoke-static {}, Lrx/internal/operators/OperatorGroupBy;->access$200()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "groupedKey":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private groupedKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    invoke-static {}, Lrx/internal/operators/OperatorGroupBy;->access$200()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object p1
.end method

.method private pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "groupState":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    const-wide/16 v6, 0x1

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drainIfPossible(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 355
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    .line 356
    .local v0, "c":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 363
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 366
    :cond_1
    invoke-static {p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 367
    return-void
.end method

.method private requestMoreIfNecessary()V
    .locals 8

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 370
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->terminated:I

    if-nez v0, :cond_0

    .line 371
    const-wide/16 v0, 0x400

    sget-object v6, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->BUFFERED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    sub-long v4, v0, v6

    .line 372
    .local v4, "toRequest":J
    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->request(J)V

    .line 376
    .end local v4    # "toRequest":J
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 163
    .local v0, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v0    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->COMPLETION_EMITTED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 174
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->TERMINATED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 182
    .local v0, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    .end local v0    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 192
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupedKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 217
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .line 218
    .local v1, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    if-nez v1, :cond_2

    .line 220
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    .end local v1    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 224
    .restart local v1    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->createNewGroup(Ljava/lang/Object;)Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    move-result-object v1

    .line 226
    :cond_2
    if-eqz v1, :cond_0

    .line 227
    sget-object v3, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->emitItem(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    .end local v2    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    const-wide/16 v2, 0x400

    .line 153
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 154
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->request(J)V

    .line 155
    return-void
.end method

.method requestFromGroupedObservable(JLrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState",
            "<TK;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TK;TT;TR;>;"
    .local p3, "group":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-static {p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 200
    invoke-static {p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->pollQueue(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)V

    .line 203
    :cond_0
    return-void
.end method
