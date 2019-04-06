.class public final Lrx/internal/operators/OperatorMulticast;
.super Lrx/observables/ConnectableObservable;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field final guard:Ljava/lang/Object;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subjectFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field subscription:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final waitingForConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
    .locals 1
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lrx/Subscriber",
            "<-TR;>;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p2, "connectedSubject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;"
    .local p3, "waitingForConnect":Ljava/util/List;, "Ljava/util/List<Lrx/Subscriber<-TR;>;>;"
    .local p4, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMulticast$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    .line 72
    iput-object p4, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    .line 73
    iput-object p5, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/subjects/Subject",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "subjectFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorMulticast;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMulticast;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMulticast;

    .prologue
    .line 40
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMulticast;, "Lrx/internal/operators/OperatorMulticast<TT;TR;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v1, 0x0

    .line 83
    .local v1, "shouldSubscribe":Z
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 84
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    if-eqz v4, :cond_1

    .line 86
    monitor-exit v5

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v1, 0x1

    .line 90
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->subjectFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/Subject;

    .line 93
    .local v2, "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    new-instance v4, Lrx/internal/operators/OperatorMulticast$2;

    invoke-direct {v4, p0, v2}, Lrx/internal/operators/OperatorMulticast$2;-><init>(Lrx/internal/operators/OperatorMulticast;Lrx/subjects/Subject;)V

    iput-object v4, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 111
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 112
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-virtual {v2, v0}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1

    .line 119
    .end local v0    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .end local v2    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 115
    .restart local v2    # "subject":Lrx/subjects/Subject;, "Lrx/subjects/Subject<-TT;+TR;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->waitingForConnect:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 117
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v1, :cond_0

    .line 124
    new-instance v4, Lrx/internal/operators/OperatorMulticast$3;

    invoke-direct {v4, p0}, Lrx/internal/operators/OperatorMulticast$3;-><init>(Lrx/internal/operators/OperatorMulticast;)V

    invoke-static {v4}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    invoke-interface {p1, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 142
    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 143
    :try_start_2
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .line 144
    .local v3, "subscriptionIsNull":Z
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    if-nez v3, :cond_0

    .line 146
    iget-object v4, p0, Lrx/internal/operators/OperatorMulticast;->source:Lrx/Observable;

    iget-object v5, p0, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    invoke-virtual {v4, v5}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 143
    .end local v3    # "subscriptionIsNull":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 144
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method
