.class abstract Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    :try_start_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;

    const-string v3, "consumerIndex"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;->C_INDEX_OFFSET:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL2Pad;-><init>(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected final lvConsumerIndex()J
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method
