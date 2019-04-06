.class Lrx/internal/operators/OperatorPublish$State;
.super Ljava/lang/Object;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private emittedSinceRequest:J

.field private origin:Lrx/internal/operators/OperatorPublish$OriginSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorPublish$OriginSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private outstandingRequests:J

.field private final ss:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private subscribers:[Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 208
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J

    .line 214
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    .line 215
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/Subscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$State;->subscribers:[Lrx/Subscriber;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorPublish$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorPublish$1;

    .prologue
    .line 208
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorPublish$State;-><init>()V

    return-void
.end method

.method private resetAfterSubscriberUpdate()J
    .locals 12

    .prologue
    .line 270
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lrx/Subscriber;

    iput-object v8, p0, Lrx/internal/operators/OperatorPublish$State;->subscribers:[Lrx/Subscriber;

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "i":I
    iget-object v8, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Subscriber;

    .line 273
    .local v5, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OperatorPublish$State;->subscribers:[Lrx/Subscriber;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v5, v9, v2

    move v2, v3

    .line 274
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 276
    .end local v5    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    const-wide/16 v6, -0x1

    .line 277
    .local v6, "lowest":J
    iget-object v8, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 279
    .local v4, "l":Ljava/util/concurrent/atomic/AtomicLong;
    iget-wide v10, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J

    neg-long v10, v10

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 280
    .local v0, "c":J
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-eqz v9, :cond_2

    cmp-long v9, v0, v6

    if-gez v9, :cond_1

    .line 281
    :cond_2
    move-wide v6, v0

    goto :goto_1

    .line 287
    .end local v0    # "c":J
    .end local v4    # "l":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_3
    iput-wide v6, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    .line 288
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J

    .line 289
    iget-wide v8, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    return-wide v8
.end method


# virtual methods
.method public declared-synchronized canEmitWithDecrement()Z
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    const-wide/16 v4, 0x1

    .line 227
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 228
    iget-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    .line 229
    iget-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrigin()Lrx/internal/operators/OperatorPublish$OriginSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorPublish$OriginSubscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$State;->origin:Lrx/internal/operators/OperatorPublish$OriginSubscriber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscribers()[Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$State;->subscribers:[Lrx/Subscriber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementOutstandingAfterFailedEmit()V
    .locals 4

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    const-wide/16 v2, 0x1

    .line 236
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->outstandingRequests:J

    .line 237
    iget-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorPublish$State;->emittedSinceRequest:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSubscriber(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Lrx/internal/operators/OperatorPublish$State;->resetAfterSubscriberUpdate()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestFromSubscriber(Lrx/Subscriber;Ljava/lang/Long;)J
    .locals 6
    .param p2, "request"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Long;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 249
    .local v0, "r":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 250
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$State;->ss:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    :goto_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorPublish$State;->resetAfterSubscriberUpdate()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 252
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 254
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "r":Ljava/util/concurrent/atomic/AtomicLong;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 256
    .restart local v0    # "r":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setOrigin(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$OriginSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/operators/OperatorPublish$State;, "Lrx/internal/operators/OperatorPublish$State<TT;>;"
    .local p1, "o":Lrx/internal/operators/OperatorPublish$OriginSubscriber;, "Lrx/internal/operators/OperatorPublish$OriginSubscriber<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$State;->origin:Lrx/internal/operators/OperatorPublish$OriginSubscriber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
