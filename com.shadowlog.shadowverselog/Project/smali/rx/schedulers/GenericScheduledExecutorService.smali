.class final Lrx/schedulers/GenericScheduledExecutorService;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 40
    new-instance v0, Lrx/schedulers/GenericScheduledExecutorService;

    invoke-direct {v0}, Lrx/schedulers/GenericScheduledExecutorService;-><init>()V

    sput-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 45
    .local v0, "count":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 46
    div-int/lit8 v0, v0, 0x2

    .line 49
    :cond_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 50
    const/16 v0, 0x8

    .line 52
    :cond_1
    sget-object v1, Lrx/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lrx/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/schedulers/GenericScheduledExecutorService;

    iget-object v0, v0, Lrx/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
