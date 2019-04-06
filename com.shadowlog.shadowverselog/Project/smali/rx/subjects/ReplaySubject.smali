.class public final Lrx/subjects/ReplaySubject;
.super Lrx/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;,
        Lrx/subjects/ReplaySubject$NodeList;,
        Lrx/subjects/ReplaySubject$TimedOnAdd;,
        Lrx/subjects/ReplaySubject$DefaultOnAdd;,
        Lrx/subjects/ReplaySubject$RemoveTimestamped;,
        Lrx/subjects/ReplaySubject$AddTimestamped;,
        Lrx/subjects/ReplaySubject$PairEvictionPolicy;,
        Lrx/subjects/ReplaySubject$TimeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$SizeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$EvictionPolicy;,
        Lrx/subjects/ReplaySubject$ReplayState;,
        Lrx/subjects/ReplaySubject$BoundedState;,
        Lrx/subjects/ReplaySubject$UnboundedReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final ssm:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p3, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;*>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 361
    iput-object p2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    .line 362
    iput-object p3, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 363
    return-void
.end method

.method private caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v0, 0x1

    .line 429
    iget-boolean v1, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayState;->replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 437
    :cond_1
    return v0
.end method

.method public static create()Lrx/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/ReplaySubject;
    .locals 3
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;-><init>(I)V

    .line 94
    .local v1, "state":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 95
    .local v0, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject$1;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$1;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 105
    new-instance v2, Lrx/subjects/ReplaySubject$2;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$2;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 141
    new-instance v2, Lrx/subjects/ReplaySubject$3;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$3;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 153
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v0, v0, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnbounded()Lrx/subjects/ReplaySubject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;

    invoke-direct {v1}, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;-><init>()V

    .line 171
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    .line 172
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 174
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method public static createWithSize(I)Lrx/subjects/ReplaySubject;
    .locals 4
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    .line 199
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    .line 200
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 202
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method static final createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "onStart":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 302
    .local v0, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, v0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 303
    new-instance v1, Lrx/subjects/ReplaySubject$4;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$4;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 339
    new-instance v1, Lrx/subjects/ReplaySubject$5;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$5;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 352
    new-instance v1, Lrx/subjects/ReplaySubject;

    invoke-direct {v1, v0, v0, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v1
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .locals 4
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    .line 238
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    new-instance v2, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {v2, p3}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance v3, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {v3}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 242
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {v1, v0, p3}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .locals 6
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$PairEvictionPolicy;

    new-instance v2, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v2, p3}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    new-instance v3, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    .line 282
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p4}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    invoke-direct {v1, v2, v3}, Lrx/subjects/ReplaySubject$PairEvictionPolicy;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/subjects/ReplaySubject$EvictionPolicy;)V

    new-instance v2, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {v2, p4}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance v3, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {v3}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 287
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {v1, v0, p4}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 407
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v1, v1, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v1}, Lrx/subjects/ReplaySubject$ReplayState;->complete()V

    .line 409
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v2

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 410
    .local v0, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    const/4 v4, 0x0

    .line 379
    iget-object v3, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v3, v3, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v3, :cond_3

    .line 380
    iget-object v3, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v3, p1}, Lrx/subjects/ReplaySubject$ReplayState;->error(Ljava/lang/Throwable;)V

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v5

    invoke-virtual {v5, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    .line 384
    .local v2, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :try_start_0
    invoke-direct {p0, v2}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    invoke-virtual {v2, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e2":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v2    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 396
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 397
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 403
    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    return-void

    .line 399
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_4
    new-instance v3, Lrx/exceptions/CompositeException;

    const-string v4, "Errors while emitting ReplaySubject.onError"

    invoke-direct {v3, v4, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v3
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v1, v1, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayState;->next(Ljava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 370
    .local v0, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-direct {p0, v0}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onNext(Ljava/lang/Object;)V

    .line 369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_1
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 420
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    array-length v0, v0

    return v0
.end method
