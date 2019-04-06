.class public final Lrx/subjects/TestSubject;
.super Lrx/subjects/Subject;
.source "TestSubject.java"


# annotations
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
.field private final innerScheduler:Lrx/Scheduler$Worker;

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/schedulers/TestScheduler;)V
    .locals 1
    .param p3, "scheduler"    # Lrx/schedulers/TestScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;",
            "Lrx/schedulers/TestScheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 67
    iput-object p2, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 68
    invoke-virtual {p3}, Lrx/schedulers/TestScheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    .line 69
    return-void
.end method

.method private _onCompleted()V
    .locals 4

    .prologue
    .line 80
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v1, v1, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v2

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 82
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    return-void
.end method

.method private _onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v1, v1, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v2

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 115
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onError(Ljava/lang/Throwable;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    return-void
.end method

.method private _onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 149
    .local v0, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lrx/subjects/TestSubject;)V
    .locals 0
    .param p0, "x0"    # Lrx/subjects/TestSubject;

    .prologue
    .line 37
    invoke-direct {p0}, Lrx/subjects/TestSubject;->_onCompleted()V

    return-void
.end method

.method static synthetic access$100(Lrx/subjects/TestSubject;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lrx/subjects/TestSubject;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lrx/subjects/TestSubject;->_onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lrx/subjects/TestSubject;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lrx/subjects/TestSubject;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lrx/subjects/TestSubject;->_onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Lrx/schedulers/TestScheduler;)Lrx/subjects/TestSubject;
    .locals 2
    .param p0, "scheduler"    # Lrx/schedulers/TestScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/schedulers/TestScheduler;",
            ")",
            "Lrx/subjects/TestSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 49
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lrx/subjects/TestSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/TestSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 57
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 59
    new-instance v1, Lrx/subjects/TestSubject;

    invoke-direct {v1, v0, v0, p0}, Lrx/subjects/TestSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/schedulers/TestScheduler;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

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
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/subjects/TestSubject;->onCompleted(J)V

    .line 77
    return-void
.end method

.method public onCompleted(J)V
    .locals 3
    .param p1, "timeInMilliseconds"    # J

    .prologue
    .line 94
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/subjects/TestSubject$2;

    invoke-direct {v1, p0}, Lrx/subjects/TestSubject$2;-><init>(Lrx/subjects/TestSubject;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lrx/subjects/TestSubject;->onError(Ljava/lang/Throwable;J)V

    .line 110
    return-void
.end method

.method public onError(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "timeInMilliseconds"    # J

    .prologue
    .line 129
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/subjects/TestSubject$3;

    invoke-direct {v1, p0, p1}, Lrx/subjects/TestSubject$3;-><init>(Lrx/subjects/TestSubject;Ljava/lang/Throwable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 137
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lrx/subjects/TestSubject;->onNext(Ljava/lang/Object;J)V

    .line 145
    return-void
.end method

.method public onNext(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "timeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lrx/subjects/TestSubject;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/TestSubject;->innerScheduler:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/subjects/TestSubject$4;

    invoke-direct {v1, p0, p1}, Lrx/subjects/TestSubject$4;-><init>(Lrx/subjects/TestSubject;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 170
    return-void
.end method
