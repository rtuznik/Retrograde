
using System;
using System.Collections.Generic;
using System.Reflection;
using SiliconStudio.Core.Serialization;
using SiliconStudio.Core.Reflection;
using SiliconStudio.Core.Serialization.Serializers;
using SiliconStudio.DataSerializers;

[assembly: AssemblyVersion("1.0.0.0")]
[assembly: System.Runtime.Versioning.TargetFramework(".NETPortable,Version=v5.0", FrameworkDisplayName=".NET Portable Subset")]

[assembly: SiliconStudio.Core.Serialization.Serializers.AssemblySerializerFactory(Type = typeof(SiliconStudio.DataSerializers.Retrograde_GameSerializerFactory))]

namespace SiliconStudio.Core.Serialization.Serializers
{
	class AssemblySerializerFactoryAttribute : Attribute
	{
		public Type Type;
	}
}

namespace SiliconStudio.DataSerializers
{
    // Assembly attributes that defines supported serializer (only generics one so that other assemblies can do generic instantiations by themselves)
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Retrograde_AudioControllerSerializer), typeof(Retrograde.AudioController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Retrograde_BasicCameraControllerSerializer), typeof(Retrograde.BasicCameraController), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Retrograde_CharacterMovementSerializer), typeof(Retrograde.CharacterMovement), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Retrograde_GeyserPuzzleSerializer), typeof(Retrograde.GeyserPuzzle), DataSerializerGenericMode.None, true, true, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.Core.Serialization.Serializers.ArraySerializer<SiliconStudio.Xenko.Engine.Entity>), typeof(SiliconStudio.Xenko.Engine.Entity[]), DataSerializerGenericMode.None, false, false, Profile = "Default")]
    [DataSerializerGlobalAttribute(typeof(SiliconStudio.DataSerializers.Retrograde_GeyserTriggerSerializer), typeof(Retrograde.GeyserTrigger), DataSerializerGenericMode.None, true, true, Profile = "Default")]
   	public static class Retrograde_GameSerializerFactory
	{
	    [SiliconStudio.Core.ModuleInitializer]
        internal static void Initialize()
        {
			var assemblySerializers = new AssemblySerializers(typeof(Retrograde_GameSerializerFactory).GetTypeInfo().Assembly);

			// Register data contract aliases

			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_EngineSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_AudioSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Core_MathematicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_PhysicsSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_CoreSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_ParticlesSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_SpriteStudio_RuntimeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_NativeSerializerFactory).GetTypeInfo().Module);
			assemblySerializers.Modules.Add(typeof(SiliconStudio.DataSerializers.SiliconStudio_Xenko_UISerializerFactory).GetTypeInfo().Module);

			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Default"] = assemblySerializersProfile;

				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x49b1e760, 0x89858e53, 0x5ee51bc9, 0xfc95afb9), typeof(Retrograde.AudioController), typeof(SiliconStudio.DataSerializers.Retrograde_AudioControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xdaa6b7a3, 0xf552895b, 0x4c06d792, 0x426ba705), typeof(Retrograde.BasicCameraController), typeof(SiliconStudio.DataSerializers.Retrograde_BasicCameraControllerSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xbf1b300c, 0x5fc09746, 0x0c21b229, 0x3de84ebb), typeof(Retrograde.CharacterMovement), typeof(SiliconStudio.DataSerializers.Retrograde_CharacterMovementSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x32ac5e34, 0x79b4abae, 0x25744504, 0xe15cb275), typeof(Retrograde.GeyserPuzzle), typeof(SiliconStudio.DataSerializers.Retrograde_GeyserPuzzleSerializer)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0x7a718962, 0x01f82e6d, 0xb2b4e233, 0x52c802e5), typeof(SiliconStudio.Xenko.Engine.Entity[]), typeof(SiliconStudio.Core.Serialization.Serializers.ArraySerializer<SiliconStudio.Xenko.Engine.Entity>)));
				assemblySerializersProfile.Add(new AssemblySerializerEntry(new SiliconStudio.Core.Storage.ObjectId(0xae3a2cd1, 0x18526e2f, 0xe992bbb9, 0xd0cb82c1), typeof(Retrograde.GeyserTrigger), typeof(SiliconStudio.DataSerializers.Retrograde_GeyserTriggerSerializer)));
			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Content"] = assemblySerializersProfile;

			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Hash"] = assemblySerializersProfile;

			}
			{
				var assemblySerializersProfile = new AssemblySerializersPerProfile();
				assemblySerializers.Profiles["Clone"] = assemblySerializersProfile;

			}

			DataSerializerFactory.RegisterSerializationAssembly(assemblySerializers);
            AssemblyRegistry.Register(typeof(Retrograde_GameSerializerFactory).GetTypeInfo().Assembly, AssemblyCommonCategories.Engine);
        }
	}
}



namespace SiliconStudio.DataSerializers
{
	sealed class Retrograde_AudioControllerSerializer : ClassDataSerializer<Retrograde.AudioController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> backgroundMusicSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			backgroundMusicSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref Retrograde.AudioController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Retrograde.AudioController)parentObj;

            backgroundMusicSerializer.Serialize(ref obj.backgroundMusic, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Retrograde_BasicCameraControllerSerializer : ClassDataSerializer<Retrograde.BasicCameraController>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> KeyboardMovementSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector3> TouchMovementSpeedSerializer;
		private DataSerializer<System.Single> SpeedFactorSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> KeyboardRotationSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> MouseRotationSpeedSerializer;
		private DataSerializer<SiliconStudio.Core.Mathematics.Vector2> TouchRotationSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			KeyboardMovementSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector3>.Create(serializerSelector);
			SpeedFactorSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			KeyboardRotationSpeedSerializer = MemberSerializer<SiliconStudio.Core.Mathematics.Vector2>.Create(serializerSelector);
		}

		public override void Serialize(ref Retrograde.BasicCameraController obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Retrograde.BasicCameraController)parentObj;

            SiliconStudio.Core.Mathematics.Vector3 keyboardMovementSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardMovementSpeed : default(SiliconStudio.Core.Mathematics.Vector3);
            KeyboardMovementSpeedSerializer.Serialize(ref keyboardMovementSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardMovementSpeed = keyboardMovementSpeed;
            SiliconStudio.Core.Mathematics.Vector3 touchMovementSpeed = mode == ArchiveMode.Serialize ? obj.TouchMovementSpeed : default(SiliconStudio.Core.Mathematics.Vector3);
            KeyboardMovementSpeedSerializer.Serialize(ref touchMovementSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TouchMovementSpeed = touchMovementSpeed;
            System.Single speedFactor = mode == ArchiveMode.Serialize ? obj.SpeedFactor : default(System.Single);
            SpeedFactorSerializer.Serialize(ref speedFactor, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.SpeedFactor = speedFactor;
            SiliconStudio.Core.Mathematics.Vector2 keyboardRotationSpeed = mode == ArchiveMode.Serialize ? obj.KeyboardRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref keyboardRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.KeyboardRotationSpeed = keyboardRotationSpeed;
            SiliconStudio.Core.Mathematics.Vector2 mouseRotationSpeed = mode == ArchiveMode.Serialize ? obj.MouseRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref mouseRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.MouseRotationSpeed = mouseRotationSpeed;
            SiliconStudio.Core.Mathematics.Vector2 touchRotationSpeed = mode == ArchiveMode.Serialize ? obj.TouchRotationSpeed : default(SiliconStudio.Core.Mathematics.Vector2);
            KeyboardRotationSpeedSerializer.Serialize(ref touchRotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.TouchRotationSpeed = touchRotationSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Retrograde_CharacterMovementSerializer : ClassDataSerializer<Retrograde.CharacterMovement>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<System.Single> SpeedSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> CameraEntitySerializer;
		private DataSerializer<System.Single> RotationAdaptationSpeedSerializer;
		private DataSerializer<System.Single> RotationSpeedSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			SpeedSerializer = MemberSerializer<System.Single>.Create(serializerSelector);
			CameraEntitySerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Entity>.Create(serializerSelector);
		}

		public override void Serialize(ref Retrograde.CharacterMovement obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Retrograde.CharacterMovement)parentObj;

            System.Single speed = mode == ArchiveMode.Serialize ? obj.Speed : default(System.Single);
            SpeedSerializer.Serialize(ref speed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.Speed = speed;
            SiliconStudio.Xenko.Engine.Entity cameraEntity = mode == ArchiveMode.Serialize ? obj.CameraEntity : default(SiliconStudio.Xenko.Engine.Entity);
            CameraEntitySerializer.Serialize(ref cameraEntity, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.CameraEntity = cameraEntity;
            System.Single rotationAdaptationSpeed = mode == ArchiveMode.Serialize ? obj.RotationAdaptationSpeed : default(System.Single);
            SpeedSerializer.Serialize(ref rotationAdaptationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.RotationAdaptationSpeed = rotationAdaptationSpeed;
            System.Single rotationSpeed = mode == ArchiveMode.Serialize ? obj.RotationSpeed : default(System.Single);
            SpeedSerializer.Serialize(ref rotationSpeed, mode, stream);
            if (mode == ArchiveMode.Deserialize)
                obj.RotationSpeed = rotationSpeed;
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Retrograde_GeyserPuzzleSerializer : ClassDataSerializer<Retrograde.GeyserPuzzle>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.SyncScript> parentSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity[]> geysersSerializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser11Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser12Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser13Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser14Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser15Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser21Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser22Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser23Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser24Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser25Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser31Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser32Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser33Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser34Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser35Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser41Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser42Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser43Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser44Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser45Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser51Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser52Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser53Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser54Serializer;
		private DataSerializer<SiliconStudio.Xenko.Engine.Entity> geyser55Serializer;
		private DataSerializer<SiliconStudio.Xenko.Audio.Sound> geyserSoundSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.SyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.SyncScript"));
			// Cache member serializers
			geysersSerializer = MemberSerializer<SiliconStudio.Xenko.Engine.Entity[]>.Create(serializerSelector);
			geyser11Serializer = MemberSerializer<SiliconStudio.Xenko.Engine.Entity>.Create(serializerSelector);
			geyserSoundSerializer = MemberSerializer<SiliconStudio.Xenko.Audio.Sound>.Create(serializerSelector);
		}

		public override void Serialize(ref Retrograde.GeyserPuzzle obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.SyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Retrograde.GeyserPuzzle)parentObj;

            geysersSerializer.Serialize(ref obj.geysers, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser11, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser12, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser13, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser14, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser15, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser21, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser22, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser23, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser24, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser25, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser31, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser32, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser33, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser34, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser35, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser41, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser42, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser43, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser44, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser45, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser51, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser52, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser53, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser54, mode, stream);
            geyser11Serializer.Serialize(ref obj.geyser55, mode, stream);
            geyserSoundSerializer.Serialize(ref obj.geyserSound, mode, stream);
		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}

namespace SiliconStudio.DataSerializers
{
	sealed class Retrograde_GeyserTriggerSerializer : ClassDataSerializer<Retrograde.GeyserTrigger>
	{
		private DataSerializer<SiliconStudio.Xenko.Engine.AsyncScript> parentSerializer;

		public override void Initialize(SerializerSelector serializerSelector)
		{
			// Get parent serializer
			parentSerializer = serializerSelector.GetSerializer<SiliconStudio.Xenko.Engine.AsyncScript>();
			if (parentSerializer == null)
				throw new InvalidOperationException(string.Format("Could not find parent serializer for type {0}", @"SiliconStudio.Xenko.Engine.AsyncScript"));
			// Cache member serializers
		}

		public override void Serialize(ref Retrograde.GeyserTrigger obj, ArchiveMode mode, SerializationStream stream)
		{
			// Serialize parent (for now we don't copy reference back because it shouldn't change)
			SiliconStudio.Xenko.Engine.AsyncScript parentObj = obj;
			parentSerializer.Serialize(ref parentObj, mode, stream);
			obj = (Retrograde.GeyserTrigger)parentObj;

		}

		internal static void ForceGenericInstantiation()
		{
		}
	}
}