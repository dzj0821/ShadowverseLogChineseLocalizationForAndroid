.class public final Lrx/internal/operators/OnSubscribeRedo;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;,
        Lrx/internal/operators/OnSubscribeRedo$RedoFinite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final REDO_INIFINITE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final controlHandlerFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lrx/Scheduler;

.field private source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private stopOnComplete:Z

.field private stopOnError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$1;

    invoke-direct {v0}, Lrx/internal/operators/OnSubscribeRedo$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INIFINITE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V
    .locals 0
    .param p3, "stopOnComplete"    # Z
    .param p4, "stopOnError"    # Z
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;ZZ",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    .line 184
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    .line 185
    iput-boolean p3, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    .line 186
    iput-boolean p4, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    .line 187
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    .line 188
    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OnSubscribeRedo;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 54
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    return-object v0
.end method

.method static synthetic access$300(Lrx/internal/operators/OnSubscribeRedo;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 54
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    return v0
.end method

.method static synthetic access$400(Lrx/internal/operators/OnSubscribeRedo;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 54
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    return v0
.end method

.method public static redo(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    const/4 v3, 0x0

    .line 172
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;J)Lrx/Observable;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;
    .locals 5
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 155
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0, p3}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public static repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INIFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0, p1}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INIFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;J)Lrx/Observable;
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 127
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 131
    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p0

    goto :goto_0
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .local v13, "isLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v17, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 195
    .local v17, "resumeBoundary":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 196
    .local v6, "consumerCapacity":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 198
    .local v7, "currentProducer":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Producer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v15

    .line 199
    .local v15, "worker":Lrx/Scheduler$Worker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 201
    new-instance v8, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v8}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 202
    .local v8, "sourceSubscriptions":Lrx/subscriptions/SerialSubscription;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 204
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v5

    .line 206
    .local v5, "terminals":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lrx/Notification<*>;>;"
    new-instance v2, Lrx/internal/operators/OnSubscribeRedo$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lrx/internal/operators/OnSubscribeRedo$2;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Lrx/subjects/PublishSubject;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicReference;Lrx/subscriptions/SerialSubscription;)V

    .line 253
    .local v2, "subscribeToSource":Lrx/functions/Action0;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    new-instance v4, Lrx/internal/operators/OnSubscribeRedo$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v13}, Lrx/internal/operators/OnSubscribeRedo$3;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 254
    invoke-virtual {v5, v4}, Lrx/subjects/PublishSubject;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v4

    .line 253
    invoke-interface {v3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Observable;

    .line 289
    .local v11, "restarts":Lrx/Observable;, "Lrx/Observable<*>;"
    new-instance v9, Lrx/internal/operators/OnSubscribeRedo$4;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object v14, v6

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lrx/internal/operators/OnSubscribeRedo$4;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Observable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Scheduler$Worker;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v15, v9}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 322
    new-instance v18, Lrx/internal/operators/OnSubscribeRedo$5;

    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v17

    move-object/from16 v23, v15

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v24}, Lrx/internal/operators/OnSubscribeRedo$5;-><init>(Lrx/internal/operators/OnSubscribeRedo;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Scheduler$Worker;Lrx/functions/Action0;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 337
    return-void
.end method
