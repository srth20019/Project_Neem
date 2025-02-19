import LoginForm from './components/LoginForm';
import { LoginFormData } from './types/auth.types';
import './App.css'

function App() {
  const handleLogin = async (data: LoginFormData) => {
    try {
      // TODO: Implement API call to backend
      // Example API call:
      // const response = await fetch('/api/login', {
      //   method: 'POST',
      //   headers: {
      //     'Content-Type': 'application/json',
      //   },
      //   body: JSON.stringify(data)
      // });
      // 
      // if (response.ok) {
      //   const result = await response.json();
      //   // Handle successful login
      //   // - Save token to localStorage
      //   // - Update auth state
      //   // - Redirect to dashboard
      // } else {
      //   // Handle error
      //   throw new Error('Login failed');
      // }
      
      console.log('Login data:', data);
    } catch (error) {
      console.error('Login error:', error);
      // TODO: Show error message to user
    }
  };

  return (
    <div>
      <LoginForm onSubmit={handleLogin} />
    </div>
  );
}

export default App;
