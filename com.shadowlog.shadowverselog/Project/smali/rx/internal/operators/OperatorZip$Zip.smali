.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/lang/Object;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorZip$Zip;",
            ">;"
        }
    .end annotation
.end field

.field static final THRESHOLD:I


# instance fields
.field private final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field volatile counter:J

.field emitted:I

.field private observers:[Ljava/lang/Object;

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 184
    const-class v0, Lrx/internal/operators/OperatorZip$Zip;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 186
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 194
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 195
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 196
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorZip$Zip;)Lrx/Observer;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorZip$Zip;

    .prologue
    .line 177
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    return-object v0
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 4
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    .line 202
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 204
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 205
    .local v1, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 206
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 210
    aget-object v3, p1, v0

    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_1
    return-void
.end method

.method tick()V
    .locals 12

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v7, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 230
    :cond_2
    :goto_1
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    .line 231
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/Object;

    .line 232
    .local v6, "vs":[Ljava/lang/Object;
    const/4 v0, 0x1

    .line 233
    .local v0, "allHaveValues":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 234
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    aget-object v7, v7, v3

    check-cast v7, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v1, v7, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 235
    .local v1, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, "n":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 238
    const/4 v0, 0x0

    .line 233
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {v1, v4}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 243
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    invoke-interface {v7}, Lrx/Observer;->onCompleted()V

    .line 246
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {v1, v4}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_3

    .line 252
    .end local v1    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v4    # "n":Ljava/lang/Object;
    :cond_5
    if-eqz v0, :cond_9

    .line 255
    :try_start_0
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    iget-object v8, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    invoke-interface {v8, v6}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 257
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 258
    iget v7, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    iget-object v8, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_7

    aget-object v5, v8, v7

    .line 265
    .local v5, "obj":Ljava/lang/Object;
    check-cast v5, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v5    # "obj":Ljava/lang/Object;
    iget-object v1, v5, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 266
    .restart local v1    # "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 268
    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 270
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    invoke-interface {v7}, Lrx/Observer;->onCompleted()V

    .line 272
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto/16 :goto_0

    .line 259
    .end local v1    # "buffer":Lrx/internal/util/RxRingBuffer;
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    invoke-static {v2, v6}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v7, v8}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 264
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 276
    .end local v1    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_7
    iget v7, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    sget v8, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    if-le v7, v8, :cond_2

    .line 277
    iget-object v8, p0, Lrx/internal/operators/OperatorZip$Zip;->observers:[Ljava/lang/Object;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_8

    aget-object v5, v8, v7

    .line 278
    .restart local v5    # "obj":Ljava/lang/Object;
    check-cast v5, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v5    # "obj":Ljava/lang/Object;
    iget v10, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    int-to-long v10, v10

    invoke-virtual {v5, v10, v11}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 280
    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1

    .line 286
    .end local v0    # "allHaveValues":Z
    .end local v3    # "i":I
    .end local v6    # "vs":[Ljava/lang/Object;
    :cond_9
    sget-object v7, Lrx/internal/operators/OperatorZip$Zip;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    goto/16 :goto_0
.end method
