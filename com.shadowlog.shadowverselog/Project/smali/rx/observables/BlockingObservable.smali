.class public final Lrx/observables/BlockingObservable;
.super Ljava/lang/Object;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final o:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    .line 61
    return-void
.end method

.method private blockForSingle(Lrx/Observable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 438
    .local v3, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 439
    .local v2, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 441
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lrx/observables/BlockingObservable$3;

    invoke-direct {v4, p0, v1, v2, v3}, Lrx/observables/BlockingObservable$3;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 460
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 467
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 463
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while waiting for subscription to complete."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 470
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 474
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static from(Lrx/Observable;)Lrx/observables/BlockingObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/BlockingObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->first()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->first(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lrx/functions/Action1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 101
    .local v1, "exceptionFromOnError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v4, Lrx/observables/BlockingObservable$1;

    invoke-direct {v4, p0, v2, v1, p1}, Lrx/observables/BlockingObservable$1;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 128
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 129
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 134
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Interrupted while waiting for subscription to complete."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 141
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 144
    :cond_1
    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->last(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public latest()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorLatest;->latest(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public mostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorNext;->next(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public single()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public single(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->single(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToFuture;->toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable$2;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable$2;-><init>(Lrx/observables/BlockingObservable;)V

    return-object v0
.end method
